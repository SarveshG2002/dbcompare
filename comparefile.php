<?php
ini_set('display_errors', 1);
error_reporting(E_ALL);

// Database connection details
// $host = 'localhost';
// $username1 = 'id22285484_dbcompare';
// $password1 = 'SarSar@123';
// $db1 = 'id22285484_dbcompare';

// $username2 = 'id22285484_dbcompare1';
// $password2 = 'SarSar@123';
// $db2 = 'id22285484_dbcompare1';

$host = 'localhost:3310';
$username1 = 'root';
$password1 = '';
$db1 = 'dbcompare1';

$username2 = 'root';
$password2 = '';
$db2 = 'dbcompare2';

// Function to drop all tables in a database
function dropAllTables($host, $username, $password, $dbName)
{
    $conn = new mysqli($host, $username, $password, $dbName);
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Disable foreign key checks
    $conn->query("SET foreign_key_checks = 0");

    // Get all table names
    $result = $conn->query("SHOW TABLES");
    if ($result) {
        while ($row = $result->fetch_array(MYSQLI_NUM)) {
            $conn->query("DROP TABLE IF EXISTS $row[0]");
        }
    }

    // Re-enable foreign key checks
    $conn->query("SET foreign_key_checks = 1");

    $conn->close();
}


// Function to upload SQL file to database
function uploadSQLFile($host, $username, $password, $dbName, $sqlFilePath)
{
    // Drop all existing tables
    try{
        dropAllTables($host, $username, $password, $dbName);

        // Create connection
        $conn = new mysqli($host, $username, $password, $dbName);
    
        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
    
        // Read SQL file
        $sql = file_get_contents($sqlFilePath);
        if ($sql === false) {
            die("Error reading SQL file: $sqlFilePath<br>");
        }
    
        // Execute SQL queries
        if ($conn->multi_query($sql) === TRUE) {
            do {
                // Flush multi_queries
                if ($result = $conn->store_result()) {
                    $result->free();
                }
            } while ($conn->more_results() && $conn->next_result());
        } else {
            echo "Error uploading SQL file to $dbName database: " . $conn->error . "<br>";
        }
    
        // Close connection
        $conn->close();
    }
    catch (PDOException $e) {
        // Handle errors
        // echo "Error: " . $e->getMessage();
        // return false;
        
        dropAllTables($host, $username, $password, $dbName);
        // dropAllTables($host, $username2, $password2, $db2);
        header("Location: index.php?error='Error'");
    }
}


try {
    // Upload db1.sql to dbcompare1 database
    $db1FilePath = 'testfiles/db1.sql';
    uploadSQLFile($host, $username1, $password1, $db1, $db1FilePath);

    // Upload db2.sql to dbcompare2 database
    $db2FilePath = 'testfiles/db2.sql';
    uploadSQLFile($host, $username2, $password2, $db2, $db2FilePath);
} catch (PDOException $e) {
    // Handle errors
    // echo "Error: " . $e->getMessage();
    // return false;
    
    dropAllTables($host, $username1, $password1, $db1);
    dropAllTables($host, $username2, $password2, $db2);
    header("Location: index.php?error='Error'");
}

// echo "hello";

// Function to get table structure
function getTableStructure($host, $username, $password, $dbName)
{
    $conn = new mysqli($host, $username, $password, $dbName);
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $tables = [];
    $result = $conn->query("SHOW TABLES");
    if (!$result) {
        die("Error getting tables from $dbName: " . $conn->error . "<br>");
    }

    

    while ($row = $result->fetch_row()) {
        $tableName = $row[0];
        // print_r($row);
        $tableStructure = [];
        $columnsResult = $conn->query("SHOW COLUMNS FROM `$tableName`");
        // echo "<br>";
        // print_r("SHOW COLUMNS FROM '$tableName'");
        // echo "<br>";
        if (!$columnsResult) {
            die("Error getting columns from $tableName: " . $conn->error . "<br>");
        }
        while ($column = $columnsResult->fetch_assoc()) {
            $tableStructure[] = $column;
        }
        $tables[$tableName] = $tableStructure;
    }
    $conn->close();
    return $tables;
}

// Function to compare table structures
function compareTables($tables1, $tables2)
{
    $differences = [];

    // Iterate through the first database tables
    foreach ($tables1 as $tableName => $columns) {
        if (!isset($tables2[$tableName])) {
            $differences[$tableName] = ["table", "Table $tableName is missing in the second database."];
        } else {
            foreach ($columns as $column) {
                $columnName = $column['Field'];
                $found = false;
                foreach ($tables2[$tableName] as $column2) {
                    if ($column2['Field'] == $columnName) {
                        $found = true;
                        $columnDifferences = [];

                        if ($column['Type'] != $column2['Type']) {
                            $columnDifferences['Type'] = [
                                'db1' => $column['Type'],
                                'db2' => $column2['Type']
                            ];
                        }
                        if ($column['Null'] != $column2['Null']) {
                            $columnDifferences['Null'] = [
                                'db1' => $column['Null'],
                                'db2' => $column2['Null']
                            ];
                        }
                        if ($column['Default'] != $column2['Default']) {
                            $columnDifferences['Default'] = [
                                'db1' => $column['Default'],
                                'db2' => $column2['Default']
                            ];
                        }
                        if ($column['Extra'] != $column2['Extra']) {
                            $columnDifferences['Extra'] = [
                                'db1' => $column['Extra'],
                                'db2' => $column2['Extra']
                            ];
                        }

                        if (!empty($columnDifferences)) {
                            $differences[$tableName]['column'][$columnName] = $columnDifferences;
                        }
                        break;
                    }
                }
                if (!$found) {
                    $differences[$tableName]['column'][$columnName] = "Column $columnName is missing in the second database.";
                }
            }
        }
    }

    // Iterate through the second database tables
    foreach ($tables2 as $tableName => $columns) {
        if (!isset($tables1[$tableName])) {
            $differences[$tableName] = ["table", "Table $tableName is missing in the first database."];
        }
    }

    return $differences;
}

try{
    // echo "hii";
    // Get table structures
$tables1 = getTableStructure($host, $username1, $password1, $db1);
$tables2 = getTableStructure($host, $username2, $password2, $db2);

// Display table structures
$differences = compareTables($tables1, $tables2);
}
catch (PDOException $e) {
    // Handle errors
    // echo "Error: " . $e->getMessage();
    // return false;
    
    dropAllTables($host, $username1, $password1, $db1);
    dropAllTables($host, $username2, $password2, $db2);
    header("Location: index.php?error='Error'");
}

// Drop all tables after comparison
dropAllTables($host, $username1, $password1, $db1);
dropAllTables($host, $username2, $password2, $db2);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Database Comparison Results</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>

<body>
    <div class="container mt-5">
        <h2>Database Comparison Results</h2>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Table</th>
                    <th>Type</th>
                    <th>Details</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($differences as $table => $diff) { ?>
                    <?php if (isset($diff[0]) && $diff[0] == "table") { ?>
                        <tr>
                            <td><?= $table ?></td>
                            <td>Table</td>
                            <td><?= $diff[1] ?></td>
                        </tr>
                    <?php } else { ?>
                        <?php foreach ($diff['column'] as $column => $details) { ?>
                            <?php if (is_array($details)) { ?>
                                <?php foreach ($details as $property => $value) { ?>
                                    <tr>
                                        <td><?= $table ?> -> <?= $column ?></td>
                                        <td><?= ucfirst($property) ?></td>
                                        <td>db1: <?= $value['db1'] ?> | db2: <?= $value['db2'] ?></td>
                                    </tr>
                                <?php } ?>
                            <?php } else { ?>
                                <tr>
                                    <td><?= $table ?> -> <?= $column ?></td>
                                    <td>Column</td>
                                    <td><?= $details ?></td>
                                </tr>
                            <?php } ?>
                        <?php } ?>
                    <?php } ?>
                <?php } ?>
            </tbody>
        </table>
    </div>
</body>

</html>
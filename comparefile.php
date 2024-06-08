<?php
// Database connection details
$host = 'localhost:3310';
$username = 'root';
$password = '';
$db1 = 'dbcompare1';
$db2 = 'dbcompare2';

// Function to drop all tables in a database
function dropAllTables($host, $username, $password, $dbName) {
    $conn = new mysqli($host, $username, $password, $dbName);
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Get all table names
    $result = $conn->query("SHOW TABLES");
    if ($result) {
        while ($row = $result->fetch_array(MYSQLI_NUM)) {
            $conn->query("DROP TABLE IF EXISTS $row[0]");
        }
    }
    $conn->close();
}

// Function to upload SQL file to database
function uploadSQLFile($host, $username, $password, $dbName, $sqlFilePath) {
    // Drop all existing tables
    dropAllTables($host, $username, $password, $dbName);

    // Create connection
    $conn = new mysqli($host, $username, $password, $dbName);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Read SQL file
    $sql = file_get_contents($sqlFilePath);

    // Execute SQL queries
    if ($conn->multi_query($sql) === TRUE) {
        echo "SQL file uploaded successfully to $dbName database.<br>";
    } else {
        echo "Error uploading SQL file to $dbName database: " . $conn->error . "<br>";
    }

    // Close connection
    $conn->close();
}

// // Upload db1.sql to dbcompare1 database
// $db1FilePath = 'testfiles/db1.sql';
// uploadSQLFile($host, $username, $password, $db1, $db1FilePath);
// // die();

// // // Upload db2.sql to dbcompare2 database
// $db2FilePath = 'testfiles/db2.sql';
// uploadSQLFile($host, $username, $password, $db2, $db2FilePath);

// die();

// Function to get table structure
function getTableStructure($host, $username, $password, $dbName) {
    $conn = new mysqli($host, $username, $password, $dbName);
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $tables = [];
    $result = $conn->query("SHOW TABLES");
    while ($row = $result->fetch_row()) {
        $tableName = $row[0];
        $tableStructure = [];
        $columnsResult = $conn->query("SHOW COLUMNS FROM $tableName");
        while ($column = $columnsResult->fetch_assoc()) {
            $tableStructure[] = $column;
        }
        $tables[$tableName] = $tableStructure;
    }
    $conn->close();
    return $tables;
}


// Function to compare table structures
function compareTables($tables1, $tables2) {
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
                        if ($column != $column2) {
                            $differences[$tableName]['column'][$columnName] = [
                                'db1' => $column,
                                'db2' => $column2
                            ];
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


// Get table structures
$tables1 = getTableStructure($host, $username, $password, $db1);
$tables2 = getTableStructure($host, $username, $password, $db2);

// Display table structures
echo "<pre>";
// print_r($tables1);
// print_r($tables2);
$differences = compareTables($tables1, $tables2);
print_r($differences);
?>

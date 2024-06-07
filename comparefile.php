<?php
// Database connection details
$host = 'localhost:3310';
$username = 'root';
$password = '';
$db1 = 'dbcompare1';
$db2 = 'dbcompare2';

// Function to upload SQL file to database
function uploadSQLFile($host, $username, $password, $dbName, $sqlFilePath) {
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
        echo "SQL file uploaded successfully to $dbName database.";
    } else {
        echo "Error uploading SQL file to $dbName database: " . $conn->error;
    }

    // Close connection
    $conn->close();
}

// Upload db1.sql to dbcompare1 database
$db1FilePath = 'testfiles/db1.sql';
uploadSQLFile($host, $username, $password, $db1, $db1FilePath);

// Upload db2.sql to dbcompare2 database
$db2FilePath = 'testfiles/db2.sql';
uploadSQLFile($host, $username, $password, $db2, $db2FilePath);
?>

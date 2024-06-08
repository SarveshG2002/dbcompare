<?php
// Check if the form was submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Specify the directory to store uploaded files
    $uploadDir = 'testfiles/';

    // Create the upload directory if it doesn't exist
    if (!file_exists($uploadDir)) {
        mkdir($uploadDir, 0777, true);
    }

    // File 1 handling
    $file1Path = $uploadDir . 'db1.sql';
    if (move_uploaded_file($_FILES["sqlfile1"]["tmp_name"], $file1Path)) {
        echo "Database 1 SQL File uploaded successfully.<br>";
    } else {
        echo "Sorry, there was an error uploading Database 1 SQL File.<br>";
    }

    // File 2 handling
    $file2Path = $uploadDir . 'db2.sql';
    if (move_uploaded_file($_FILES["sqlfile2"]["tmp_name"], $file2Path)) {
        echo "Database 2 SQL File uploaded successfully.<br>";
    } else {
        echo "Sorry, there was an error uploading Database 2 SQL File.<br>";
    }

    header("Location: comparefile.php");

    // Perform database comparison or any other processing here
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Database Comparison Tool</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header bg-primary text-white">
                        <h3 class="text-center">Upload SQL Files for Comparison</h3>
                    </div>
                    <div class="card-body">
                        <form action="" method="post" enctype="multipart/form-data">
                            <div class="form-group">
                                <label for="sqlfile1">Database 1 SQL File:</label>
                                <input type="file" class="form-control-file" name="sqlfile1" id="sqlfile1" required>
                            </div>
                            <div class="form-group">
                                <label for="sqlfile2">Database 2 SQL File:</label>
                                <input type="file" class="form-control-file" name="sqlfile2" id="sqlfile2" required>
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary">Upload and Compare</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Bootstrap JS (Optional) -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

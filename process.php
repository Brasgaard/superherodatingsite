<!DOCTYPE html>
<html>
<head>
	<title>processing</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<?php
	
	// check what is received through POST
	// var_dump($_POST); die();
	include('classes/database.php');
	$database = new Database;
	$database->connect();


	//- - - Add new movie - - - 

	// First, prepare the SQL
	$sql = "UPDATE superheroes SET 
                            name = '" . $_POST['name'] . 
                            "', alias = '" . $_POST['alias'] .
                            "', location = '" . $_POST['location'] .
                            "', gender = '" . $_POST['gender'] .
                            "', age = '" . $_POST['age'] .
                            "', profilepicture = '" . $_POST['profilepicture'] .
                            "', description = '" . $_POST['description'] .
                            "', gender = '" . $_POST['gender'] .
			"' WHERE id='1'";
    
	// Call prepared function to execute the above
	$database->queryWithoutFetchAll($sql);


?>
<p class="notice success">POWER! Your superhero is now added to the database.
	<a href="index.php" class="notice">Go back</a>
</p>
</body>
</html>
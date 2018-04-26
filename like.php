<?php
	// Put this inside a php called like.php
	// check what is received through POST
	// var_dump($_POST); die();
	include('classes/database.php');
	$database = new Database;
	$database->connect();

	
	
	$sql = "UPDATE `superheroes` SET `likes` = `likes` + 1 WHERE id = " . htmlspecialchars($_GET["id"]);

	// function to execute the above
	$database->queryWithoutFetchAll($sql);

	header("Location: index.php");

?>
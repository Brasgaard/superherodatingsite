<?php
// Include and initiate the database class (you only have to do this once)
include('classes/database.php');
$database = new Database;
$database->connect();

$sql = "INSERT INTO comments (text, superhero_from, superhero_to) VALUES (?, ?, ?)";

$values = [
	$_POST["text"],
	$_POST["superhero_from"],
	$_POST["superhero_to"]
];

$database->prepared($sql, $values);

header("Location: index.php");
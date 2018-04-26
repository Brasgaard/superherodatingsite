<!DOCTYPE html>
<html>
<head>
	<title>Update profile</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<?php
// Get all types from the database
	include('classes/database.php');
	$database = new Database;
	$database->connect();
?>

  <form action="process.php" method="post">
  	<label for="name">Name</label>
  	<input type="text" name="name" placeholder="e.g. Bruce Banner">

    <label for="alias">Alias</label><br>
    <input type="text" name="alias" placeholder="e.g. The Hulk">
  	
  	<label for="image">Superherodb.com picture id (<em>https://www.superherodb.com/pictures2/portraits/10/100/83.jpg</em>)</label>
  	<input type="text" name="profilepicture" placeholder="absolute url to image"><br>

  	<label for="age">Age</label><br>
  	<input type="text" name="age" placeholder="e.g. 49">

  	<label for="gender">Gender</label>
  	<input type="text" name="gender" placeholder="e.g. Male">

    <label for="location">Location</label>
    <input type="text" name="location" placeholder="e.g. Dayton, Ohio">

    <label for="description">Description</label>
    <textarea name="description" placeholder="Maybe a famous quote?"></textarea>

  	<input type="submit" name="submit" value="Update profile">
  </form>

</body>
</html>
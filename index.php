
<?php
// ensure that php errors are displayed
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// Include and initiate the database class (you only have to do this once)
include('classes/database.php');
$database = new Database;
$database->connect();

$logged_in_superhero = $database->query("SELECT * FROM superheroes WHERE id = 1")[0];
?>
<!DOCTYPE html>
<html>
<head>
	<title>SuperDating - Just a little more power</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<?php
	// Get all titles from the database
	$superheroes = $database->query('SELECT * FROM superheroes');
	// var_dump($superheroes);?>

<div id="test">
	<h1>SuperDating - Just a little more power</h1>
	<a href="updateprofile.php" class="add_new notice">Update your profile</a>
<?php
	// Loop through all superheroes
	foreach ($superheroes as $superhero) {
		$comments = $database->query("SELECT * FROM comments LEFT JOIN superheroes ON comments.superhero_from = superheroes.id WHERE superhero_to = " . $superhero["id"]);
		?>
		<article class="profiles">
			<img class="photos" src="<?php echo $superhero['profilepicture'];?>">
			<h2><?php echo $superhero['name'];?> - <?php echo $superhero['alias'];?></h2>
			<button class="likebtn"><a href="./like.php?id=<?php echo $superhero['id']; ?>">Like <?php echo $superhero['likes'];?></a></button>
			<p>Age:<br><?php echo $superhero['age'];?></p>
			<p>Gender:<br><?php echo $superhero['gender'];?></p>
			<p>Location:<br><?php echo $superhero['location'];?></p>
			<p>Description:<br><?php echo $superhero['description'];?></p>
			<form action="add-comment.php" method="post" id="usrform">
				<input type="hidden" name="superhero_from" value="<?php echo $logged_in_superhero["id"];?>">
				<input type="hidden" name="superhero_to" value="<?php echo $superhero['id'];?>">
				<textarea rows="4" cols="50" name="text" placeholder="Enter comment here..."></textarea>
				<button type="submit">Add comment</button>
			</form>

			<?php
				foreach ($comments as $comment) {
			?>
				<p>
					<p><b><?php echo $comment["alias"];?>:</b></p>
					<p><?php echo $comment["text"];?></p>
					<br>
				</dl>
			<?php
				}
			?>

		</article>

		<?php
	}
?>
</div>

</body>
</html>
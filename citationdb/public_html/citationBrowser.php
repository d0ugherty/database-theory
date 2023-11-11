<!DOCTYPE html>
<?php
	ini_get('display_errors');
	ini_set('display_errors', '1');
	ini_get('display_startup_errors');
	ini_set('display_startup_errors', '1');
	
	error_reporting(E_ALL);	
	if (!include('connect.php')) {
		die('connect.php not found');
	}
	$dbh = ConnectDB();
	echo "connected to database";
	

?>
<html>
<head>
	<title> Citation Browser</title>
</head>
<body>
<h1>Citation Browser</h1>
<p>Select a paper from the dropdown menu and submit to see its citations</p>

<form action = "listCitations.php" method="get">
	
	<label for='paper_id'>Select Paper: </label>
	<select id='paper_id' name='paper_id'>

<?php
	try {
			$sql  = 'SELECT paper_id, title ';
			$sql .= 'FROM papers';
			$stmt = $dbh->prepare($sql);
			$stmt->execute();

			foreach ($stmt->fetchAll() as $papers) {
				echo "<option value='" . $papers['paper_id'] . "'>" . $papers['title'] . "</option>";
			}
			$stmt = null;
		} catch (Exception $e) {
			echo "Error";
			echo $e->getMessage();
		}
		?>
	</select>&nbsp:&nbsp;&nbsp;&nbsp;
	<input type='submit' value='Submit'>
	
	</form>
</body>
</html>

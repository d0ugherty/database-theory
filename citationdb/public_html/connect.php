<?php
function ConnectDB(){
	$hostname = '127.0.0.1';
	$username = 'doughe38';
	$password = '1Pearwater!';
	$dbname = 'doughe38';

	try {
		$dbh = new PDO("mysql:host=$hostname;dbname=$dbname",
			$username, $password);
	}
	catch(PDOException $e) {
		die ('PDO error in ConnectDB(): ' . $e->getMessage() );
	}

	return $dbh;
}

?>

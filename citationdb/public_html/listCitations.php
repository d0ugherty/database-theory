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
        <title> Citation List </title>
</head>
<body>
    <h1> Citation List </h1>
    <p> 


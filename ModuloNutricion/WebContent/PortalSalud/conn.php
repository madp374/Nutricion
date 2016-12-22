<?php

$conn = @mysql_connect('localhost','root','maynor');
if (!$conn) {
	die('Could not connect: ' . mysql_error());
}
mysql_select_db('mydb', $conn);

?>
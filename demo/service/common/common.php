<?php
function db_con(){
	$con = mysql_connect("10.177.132.36:3306/milestone","root","rootroot");
	if (!$con)
	{
		die('Could not connect: ' . mysql_error());
	}
	mysql_select_db("milestone", $con);
	return $con;
}

function db_dic($con){
	mysql_close($con);
}
?>

<?php 
$con = mysql_connect("127.0.0.1:3306/milestone","root","");
if (!$con)
{
	die('Could not connect: ' . mysql_error());
}
mysql_select_db("milestone", $con);
?>

<?php 
mysql_query("INSERT INTO mile_subject (title, content) VALUES ('" 
	.$_POST["mile_title"] ."', '" 
	.$_POST["mile_content"] ."')");
$new_subject_id = mysql_insert_id();
$mile_type_id = $_POST["mile_type_id"];
mysql_query("INSERT INTO mile_subject_type_map (subject_id, type_id) VALUES (" 
	.$new_subject_id .", "
	.$mile_type_id .")");
?>

<?php mysql_close($con); ?>

<?php
//	echo mysql_insert_id();
    include "../../html/operation.success.html"; 
?>


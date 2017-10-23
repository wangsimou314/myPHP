<?php
$con = mysql_connect("10.177.132.36:3306/milestone","root","rootroot");
if (!$con)
{
	die('Could not connect: ' . mysql_error());
}
mysql_select_db("milestone", $con);
?>

<?php
mysql_query("delete from mile_subject where id = " .$_GET["id"]);
?>

<?php
mysql_close($con);
?>

<?php
	include "../../html/operation.success.html"; 
?>
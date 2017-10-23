<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Subject List</title>
</head>
<body>
<?php
// connect to database
$con = mysql_connect("10.177.132.36:3306/milestone","root","rootroot");
if (!$con)
{
	die('Could not connect: ' . mysql_error());
}
// select database
mysql_select_db("milestone", $con);
?>
<table border="1">
	<tr>
		<th>#</th>
		<th>Title</th>
		<th>Content</th>
		<th>Type</th>
		<th>Operations</th> <!-- Options -->
	</tr>
	<?php
	$result = mysql_query("SELECT * FROM milestone.subject_view limit 50");
	while($row = mysql_fetch_array($result))
	{
		echo "<tr>"
		."<td>" .$row["id"] ."</td>"
		."<td>" .$row["title"] ."</td>"
		."<td>" .$row["content"] ."</td>"
		."<td>" .$row["type_name"] ."</td>"
		."<td><a href ='subject.edit.php?id=" .$row["id"] 
		."'>Edit</a>"
		." | <a href ='service/subject/subject.remove.php?id=" .$row["id"] 
		."'>Remove</a>"
		."</td>"
		."</tr>";
	}
	mysql_close($con);
	?>
</table>

</body>
</html>

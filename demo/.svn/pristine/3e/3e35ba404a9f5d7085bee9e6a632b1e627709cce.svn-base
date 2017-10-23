<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update Title</title>
</head>
<body>
<?php
$subject_id =$_GET["id"];
$con = mysql_connect("10.177.132.36:3306/milestone","root","rootroot");
if (!$con){die('Could not connect: ' . mysql_error());}
mysql_select_db("milestone", $con);
?>
<?php
$result = mysql_query("SELECT * FROM milestone.subject_view where id = '" .$subject_id ."'");
$num_result = mysql_num_rows($result);
$row;
if ($num_result == 1){
	$row = mysql_fetch_array($result);
}else{
	echo "ERROR HAPPEN!!";
}
?>
<h2>Update: <?php echo $row["title"]?></h2>
<hr>
<form action="service/subject/subject.update.php" method="post">
	<!-- hide subject id in this form, we do not need user edit it -->
	<input type="hidden" name="subject_id" value="<?php echo $subject_id?>">
	<table>
		<tr>
			<td>Type:</td>
			<td>
				<!-- disable this selection, we do not need user select it again. -->
				<select name="mile_type_id" disabled="disabled">
				<?php
					$types = mysql_query("SELECT * FROM milestone.mile_subject_type");
					while($type = mysql_fetch_array($types)){
						if($row["type_id"] == $type["id"] ){
							echo "<option value ='" .$type["id"] ."' selected='selected'>" .$type["name"] ."</option>";
						}else {
							echo "<option value ='" .$type["id"] ."'>" .$type["name"] ."</option>";
						}
					}
				?>
				</select>
			</td>
		</tr>
		<tr>
			<td>Title:</td>
			<td><input type="text"  name="mile_title" value="<?php echo $row["title"]?>"></td>
		</tr>
		<tr>
			<td>Content:</td>
			<td><textarea rows="2" cols="50" name="mile_content"><?php echo $row["content"]?></textarea></td>
		</tr>
	</table>
	<input type="submit" value="Update">
</form>
<?php mysql_close($con); ?>
</body>
</html>

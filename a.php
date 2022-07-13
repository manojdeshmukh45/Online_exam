<?php
error_reporting(0);
session_start();
?>
<?php
include("database.php");
extract($_SESSION);
$rs=mysqli_query($con,"select t.test_name,t.total_que,r.test_date,r.score from mst_test t, mst_result r where t.test_id=r.test_id and r.login='$login'",$cn) or die(mysqli_error());
$row=mysqli_fetch_row($rs);
if(mysqli_num_rows($rs)<1);
while ($row=mysqli_fetch_row($rs))
{
    $b=$row[3];
    $c=$row[1]-$row[3];
$dataPoints = array(
	array("label"=> "True", "y"=> $b),
	array("label"=> "False", "y"=> $c ),
	
);
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Online Quiz  - Result </title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="quiz.css" rel="stylesheet" type="text/css">
<script>
window.onload = function () {
 
var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
    animationDuration: 2000,
	exportEnabled: true,
	title:{
		text: "Result Of Test"
	},
	
	data: [{
		type: "pie",
		showInLegend: "true",
		legendText: "{label}",
		indexLabelFontSize: 16,
		indexLabel: "{label} - #percent%",
		yValueFormatString: "#,##0",
		dataPoints: <?php echo json_encode($dataPoints, JSON_NUMERIC_CHECK); ?>
	}]
});
chart.render();
 
}
</script>
</head>

<body>
<?php
include("header.php");
include("database.php");
extract($_SESSION);
$rs=mysqli_query($con,"select t.test_name,t.total_que,r.test_date,r.score from mst_test t, mst_result r where
t.test_id=r.test_id and r.login='$login'") or die(mysqli_error());

echo "<h1 class=head1> Result </h1>";
if(mysqli_num_rows($rs)<1)
{
	echo "<br><br><h1 class=head1> You have not given any quiz</h1>";
	exit;
}
echo "<table border=1 align=center><tr class=style2><td width=300>Test Name <td> Total<br> Question <td> True <td> False";
while($row=mysqli_fetch_row($rs))
{
    $a=$row[1];
    $b=$row[3];
    $c=$row[1]-$row[3];
echo "<tr class=style8><td>$row[0] <td align=center> $a <td align=center> $b <td align=center> $c";
}
echo "</table>";
?>
<div id="chartContainer" style="height: 370px; width: 100%;"></div>
<script src="canvasjs.min.js"></script>
</body>
</html>

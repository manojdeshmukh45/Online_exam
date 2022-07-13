<?php
session_start();
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Online Quiz - Quiz List</title>
<link href="../quiz.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="quiz.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<style>
    
div a{
    position: absolute;
    top: 35%;
    left: 50%;
    transform: translate(-50%,-50%);
    padding: 10px 20px;
    text-transform: uppercase;
    text-decoration: none;
    color: black;
    letter-spacing: 2px;
    font-size: 15px;
}
div a:before{
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: #03a9f4;
    z-index: -1;
    transition: transform 0.5s;
    transform-origin: bottom right;
    transform: scale(0);
}
div a:hover:before{
    transition: transform 0.5s;
    transform-origin:top left;
    transform: scale(1);
}
div a:after{
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: transparent;
    border:2px solid #008000;
    z-index: -1;
    box-sizing: border-box;
    transition: transform 0.5s;
    transform-origin: top left;
    transform: scale(1);
}
div a:hover:after{
    transition: transform 0.5s;
    transform-origin: bottom right;
    transform: scale(0);
}
    </style>
</head>
<body>
<?php
include("header.php");
include("../database.php");
{
$sql=mysqli_query($con,"select * from mst_question");	
	
    echo "<div><a href=\"questionadd.php\">Add Question </a></div>";
	echo "<table class='table table-striped'>";
	
	echo "<br/><br/><br/><br/><tr><th class='text-primary'>ID</th><th class='text-primary'>Question</th>
	<th class='text-primary'>Update</th>
	<th class='text-primary'>Delete</th></tR>";
	
	while($result=mysqli_fetch_assoc($sql))
	{
$id=$result['que_id'];
	
	echo "<tr>";	
	echo "<td>".$result['que_id']. "</td>";
	echo "<td>".$result['que_desc']."</td>";
	echo "<td><a href='queupdate.php?que_id=$id'><span class='glyphicon glyphicon-edit'></span></a></td>";
	echo "<td><a href='quedelete.php?que_id=$id'><span class='glyphicon glyphicon-trash'></span></a></td>";
	echo "</tr>";
	}
	echo "</table>";
}
?>
</body>
</html>

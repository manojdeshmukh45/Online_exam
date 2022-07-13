<html>

    
<head>
    <style>
        
    

    
    </style>
</head>    
<?php


session_start();
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Online Quiz - Quiz List</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="quiz.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<style>
     ul {
    margin: 0; 
    padding: 0;
    width:185px;
    list-style-type: none;
    text-align:center;
}

 ul li a {
    text-decoration: none;
    color: red; 
    padding: 10.5px 11px;
    display:block;
}
 
 ul li a:hover,  ul li .current {
    color: green;
    border:1px blue dashed;
}
    </style>
</head>
<body>
<?php
include("header.php");
include("database.php");
echo "<h1 class='text-center bg-danger'>Select Subject to Give Quiz</h1>";
$rs=mysqli_query($con,"select * from mst_subject");

echo "<div class=container>";
        
          
        
while($row=mysqli_fetch_row($rs))
{
   echo "<center>";
    echo "<ul>
<li><a href='showtest.php?subid=$row[0]'>$row[1]</a></li></ul>";
    echo "</center>";
    
}
echo "</div>";

?>
</body>
</html>

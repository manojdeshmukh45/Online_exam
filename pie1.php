
<html>
<head>

</head>
<body >
<?Php

$host_name = "localhost";
$database = "quiz_new"; // Change your database name
$username = "root";          // Your database user id 
$password = "";          // Your password


$rs = mysqli_connect($host_name, $username, $password, $database);

if (!$rs) {
    echo "Error: Unable to connect to MySQL.<br>";
    echo "<br>Debugging errno: " . mysqli_connect_errno();
    echo "<br>Debugging error: " . mysqli_connect_error();
    exit;
}
?>
   
    <?php
if($stmt = $rs->query("SELECT  * FROM mst_question")){

 
$php_data_array = Array(); // create PHP array
  echo "<table>
<tr> <th>True</th><th>False</th></tr>";
while ($row = $stmt->fetch_row()) {
   echo "<tr><td>$_SESSION[trueans]</td><td>$w</td></tr>";
   $php_data_array[] = $row; // Adding to array
   }
echo "</table>";
}else{
echo $rs->error;
}

echo "<script>
        var my_2d = ".json_encode($php_data_array)."
</script>";
?>


<div id="chart_div"></div>
<br><br>
</body>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script>
 google.charts.load('current', {'packages':['corechart']});
     // Draw the pie chart when Charts is loaded.
      google.charts.setOnLoadCallback(draw_my_chart);
      // Callback that draws the pie chart
      function draw_my_chart() {
        // Create the data table .
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'True');
        data.addColumn('number', 'False');
		for(i = 0; i < my_2d.length; i++)
    data.addRow([my_2d[i][0], parseInt(my_2d[i][1])]);
// above row adds the JavaScript two dimensional array data into required chart format
    var options = {title:'Result Of Tests',
                       width:600,
                       height:500};

        // Instantiate and draw the chart
        var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
</script>
</html>








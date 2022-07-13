


<?php
  session_start();
?>
<html>
   <head>
	<title>brain sizzling</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
<style>
       
body 

.glow {
  font-size: 20px;
  color: green;
  text-align: center;
  -webkit-animation: glow 1s ease-in-out infinite alternate;
  -moz-animation: glow 1s ease-in-out infinite alternate;
  animation: glow 1s ease-in-out infinite alternate;
}

@-webkit-keyframes glow {
  from {
    text-shadow: 0 0 1px #fff, 0 0 2px #fff, 0 0 3px #e60073, 0 0 4px #e60073, 0 0 5px #e60073, 0 0 6px #e60073, 0 0 7px #e60073;
  }
  
  to {
    text-shadow: 0 0 20px #fff, 0 0 30px #ff4da6, 0 0 40px #ff4da6, 0 0 50px #ff4da6, 0 0 60px #ff4da6, 0 0 70px #ff4da6, 0 0 80px #ff4da6;
  }
}
</style>
    </head>

    <body> 
        <?php
        include("header.php");
        ?> 



<?php
 //1.included the header image
include("database.php"); //2.connected the database
extract($_POST);   //3.Extracted the data

if(isset($submit))
{
	$rs=mysqli_query($con,"select * from mst_user where login='$loginid' and pass='$pass'");
	if(mysqli_num_rows($rs)<1)
	{
		$found="N";
	}
	else
	{
		$_SESSION[login]=$loginid;
	}
}
    
//4.if login successfull it will go to home page   
if (isset($_SESSION[login]))
{
echo "<h1 class='text-center bg-danger'>Welcome to Online Exam</h1>";
    echo "<center>";
echo '<table width="28%"  border="0" align="center">
    <tr>
       <td width="7%" height="65" valign="bottom">
        <img src="image/search.gif" width="100" height="100" align="middle">
       </td>
    
      <td width="93%" valign="middle" bordercolor="#0000FF"> 
       <a href="sublist.php" class="glow"><b>Subject for Quiz </b></a>
     </td>
    
   </tr>
  
   <p>If you are a New User Please Take a Sample Test For First To Know about How It Works Then Start Actual Exam</p>
  <tr>
     <td height="58" valign="bottom">
        <img src="image/result.gif" width="100" height="100" align="absmiddle">
    </td>
    
    <td valign="middle"> 
       <a href="result.php" class="glow" class="style4" ><b>Result </b></a>
    </td>
    </tr>
  </center>
</table>';
   
		exit;
		

}
?>
       
<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="images/img-01.png" alt="IMG">
				</div>

				<form class="login100-form validate-form" method="post" action="">
					<span class="login100-form-title">
						Door for Your Feature is Here..
					</span>

					<div class="wrap-input100 validate-input text-primary" data-validate = " required:UserName">
						<input class="input100" type="text" name="loginid"  id="loginid2" placeholder="LOGIN ID">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input text-primary" data-validate = "Password is required">
						<input class="input100" type="password" name="pass" id="pass2" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
  
   <?php
		  if(isset($found))
		  {
		  	echo "Invalid Username or Password";
		  }
    ?>
         
          
       <div class="container-login100-form-btn">
						
				<input class="login100-form-btn" type="submit" name="submit" id="submit" Value="Login"/><br/><br/><br/>
                    <button class="login100-form-btn"  type="submit"><a href="main.php">Back</a></button>
						
					</div>

					
					<div class="errors">
						<a class="txt2" href="signup.php">
							Create your Account
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>

    <!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>
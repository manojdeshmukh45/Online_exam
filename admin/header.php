

<style type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css"/>
</style>
<style>
ul{
    margin: 2px 1px;
    padding: 0;
    display: flex;
}
ul li{
    list-style: none;
    padding: 1px 5px;
}
ul li a{
    text-decoration: none;
    text-transform: uppercase;
    font-size: 1em;
    color: #262626;
    position: relative;
    transition: .5s;
}
ul li a:before{
    content: "";
    position: absolute;
    width: 100%;
    height: 26px;
    background: #ff5f5f;
    transform-style: preserve-3d;
    transform: scale(0) rotateY(0deg) skew(10deg);
    transition: 1.5s cubic-bezier(.43,1.91,.35,.74);
    z-index: -1;
}
ul li:hover a:before{
    transform: scale(1.2) rotateY(360deg) skew(10deg);
}
ul li:hover a{
    color:#fff;
}
ul li a:after{
    content: "";
    position: absolute;
    width: 50px;
    height: 50px;
    background: grey;
    transform-style: preserve-3d;
    transform: translate(-50%,-50%) scale(0);
    transition: 1.5s cubic-bezier(.43,1.91,.35,.74);
    z-index: -2;
    border-radius: 50%;
    top: 50%;
    left: 50%;
    opacity: 0.5
}
ul li:hover a:after{
    transform: translate(-50%,-50%) scale(1.2);
}
</style>  

<table>
<tr>
    <td width="10%">
     <img border="0" src="Header.jpg" width="100%" height="150" align="right"></td>
  </tr>

</table>
  <table width="100%">
  <tr>
  <td>
  <?php @$_SESSION['login']; 
  error_reporting(1);
  ?>
  </td>
    <td>
	
<?php
	if(isset($_SESSION['alogin']))
	{
	
	 echo "<br/>
     <ul>
     
	 <li><a href=\"viewsub.php\">  View Subject</a></li>&emsp;
     <li><a href=\"testview.php\"> View Test</a> </li> &emsp;
	 <li><a href=\"questiondelete.php\">View Question</a></li>&emsp;
	 <li><a href=\"showuser.php\"> View User</a></li>
     &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
     <li><a href=\"login.php\">Admin Home</a></li>&emsp;
	 <li><a href=\"signout.php\">Signout</a></li>
     
     </ul>";
	 }
	 else
	 {
	 	echo "&nbsp;";
	 }
	?>
		</td>
	
  </tr>
  
</table>
   
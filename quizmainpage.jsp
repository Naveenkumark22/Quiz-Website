<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
	<meta charset="utf-8">
<meta charset="ISO-8859-1">
<title>Quiz Main Page</title>
<style type="text/css">
	li{
  		margin-left: 10px;
  		margin-right: 20px;
  		list-style: none
  	}
  	nav {
  		
  		align-content: right;
  		font-family: verdana;
  		font-size: 20px;
  	}
  	body{
  		background-color: lightcyan;
  		
  	}
  	.c1:hover{
  		
  		transform: scale(1.03); 


  	}
  	.card{
  		border-radius: 45px;
background: linear-gradient(145deg, #a6abd3, #8c90b1);
box-shadow:  15px 15px 30px #63667e,
             -15px -15px 30px #d3daff;

  	}
@media only screen and (max-width: 320px ) and (min-width: 0px) {
  .topimg {
  width:200px ;
  height: 240px;
    
  }
   .btmimg{
  	width: 200px;
  }
}
@media only screen and (max-width: 375px ) and (min-width: 320px) {
  .topimg {
  width:320px ;
  height: 270px;
    
  }
  .btmimg{
  	width: 250px;
  }
  .navbar-brand{
  	width: 80px;
  }
  span,li{
  	font-size: 20px;
  }
}
@media only screen and (max-width: 425px ) and (min-width: 375px) {
  .topimg {
  width:375px ;
  height: 320px;
    
  }
}
@media only screen and (max-width: 768px ) and (min-width: 425px) {
  .topimg {
  width:425px ;
  height: 320px;
    
  }
}
@media only screen and (max-width: 1000px ) and (min-width: 768px) {
  .topimg {
  width:700px ;
  height: 320px;
    
  }
  
}
@media only screen and (max-width: 1024px ) and (min-width: 1000px) {
  .topimg {
  width:1290px ;
  height: 320px;
    
  }
  
}
@media only screen and (max-width: 1424px ) and (min-width: 1024px) {
  .topimg {
  width:1294px ;
  height: 320px;
    
  }
  .btmimg{
  	width: 400px;
  }
}
}


</style>

<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top  ">
 <p style="font-family:italic ;font-weight: bold; font-size: 30px; ">
 	<span><i class="fab fa-quinscape" style="color: blue; "></i></span>
 	<span>u</span>
 	<span><i class="far fa-lightbulb" style="color: yellow; "></i></span>
 	<span>Z</span><i class="fas fa-exclamation"></i>
 </p>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse justify-content-sm-end" id="navbarSupportedContent">
  
				<li class="nav-item">

					<a href="index.html"" class="nav-link"><i class="fas fa-home"></i>&nbspHOME</a>
				</li>

					<li class="nav-item"><i style="font-size:30px;color:blue;" class="fas fa-user-circle fa" style="color: blue; "></i>&nbsp<span style="font-size:25px;font-family:verdana;"><%=session.getAttribute("name")%></span></li>
				<li class="nav-item">
					
					
				</li>
			</div>
		</nav>
		<br><br>

 
      
      <img class="topimg" src="images\9.jpg">
  
<br><br><br><br>
</head>
<body>
<br><br><br><br>

	<div class="text-center">
		<h3 style="font-weight:;background-color:white;padding:20px 20px; text-shadow: 1px 1px 0px black, 0 0 1px blue, 0 0 1px darkblue;box-shadow: 1px 1px 5px blue, 0 0 5px black, 0 0 1px darkblue;
           ">" Winners are there within you and me, we just need to explore those capabilities"

</h3>
	</div>
		<br><br>
		<br>
		<div></div>
		<br><br>
		<div class="container-fluid">
			<div class="card-deck">
				<div class="card">
					<div class="card-img-top text-center" style="margin-top: 30px; ">
						<img src="images\11.jpg" width="270" height="200" >
					</div><br>
					<div class="text-center">
						<a style=" background-color: blue;padding: 10px 10px 10px 10px;color: white; border-radius: 5px;text-decoration: none;font-weight: bold; " href="javabasic.html">START QUIZ</a>
					</div>
					<br><br>
				</div>
					<div class="card">
					<div class="card-img-top text-center" style="margin-top: 30px; ">
						<img src="images\c.png" width="270" height="200" style="border-radius: 0px; ">
					</div>
					<br>
					<div class="text-center">
						<a style=" background-color: blue;padding: 10px 10px 10px 10px;color: white; border-radius: 5px;text-decoration: none;font-weight: bold; " href="cbasics.html">START QUIZ</a>
					</div>
					<br><br>
				</div>
					
			</div>
		</div>
		

		
	</div>
<br><br><br><br>><br>
</body>
</html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Meglog Home</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <style>

  .carousel-inner img {
    width: 100%;
    height: 550px;
  }
 
	#header {
	  width: 100%;
	  height: 80px;
	  border:solid;
	  border-radius: 25px;
	}
	
	#home,#chat,#gallery {
		width: 50px;
		height: 50px;
		margin-top: -30px;
		margin-left: 10px;
	}
  	
  	.header-container{
  		display: inline-block;
  	}
  	
	.welcome {
		display: inline-block;
		font-size: 50px; 
		font-family: fantasy;
		color: darkgray; 
		margin-left:350px;		
  	}
  	
  	
  	.login, .logout {
  		display: inline-block;
  		font-family: fantasy;
  		color: black;
  		font-size: 50px; 	
  		text-decoration: none;
  		margin-left: 300px
  	}
 
  	.container {
  		width: 1320px;
  		margin: auto auto;
  		padding: 0 15px;
  		
  	}
  	
  	a:link {
  		text-decoration: none;
  		color:black;
  	}
 
  </style>
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
<!---------헤더 아이콘--------->
<div id="header">
	<div class="header-container">
		<a href ="/Meg/home"><img id="home" src="/images/home.png"> </a>
		<a href ="/Meg/board/list/page/1"><img id="home" src="/images/chat.png"> </a>
		<a href ="/Meg/gallery"><img id="gallery" src="/images/gallery.png"> </a>			
	</div>	
	
	<div class="welcome">
		Welcome ${member}!		
	</div>	
	
			<div class="login">
				<a href ="/Meg/login" id="login">Login</a>
			</div>		
	
</div>

<!---------캐로셀--------->
<div id="demo" class="carousel slide" data-ride="carousel">
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/images/travel/travel1.jpg" alt="Los Angeles" width="1100" height="500">
      <div class="carousel-caption">
        <h3>Los Angeles</h3>
        <p>We had such a great time in LA!</p>
      </div>   
    </div>
    <div class="carousel-item">
      <img src="/images/travel/travel2.jpg" alt="Chicago" width="1100" height="500">
      <div class="carousel-caption">
        <h3>Chicago</h3>
        <p>Thank you, Chicago!</p>
      </div>   
    </div>
    <div class="carousel-item">
      <img src="/images/travel/travel3.jpg" alt="New York" width="1100" height="500">
      <div class="carousel-caption">
        <h3>Fly Away</h3>
        <p>Into the unknown world</p>
      </div>   
    </div>
  </div>
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>

</body>
</html>
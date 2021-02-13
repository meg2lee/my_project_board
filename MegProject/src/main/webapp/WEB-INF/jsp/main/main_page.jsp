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
	  height: 65px;
	  background-color: #708090;
	  top: 0px;
	  z-index: 2000;
	}
	
	#home,#chat,#gallery {
		width: 50px;
		height: 50px;
		margin-top: 10px;
		margin-left: 10px;
	}
		
  	table {text-align: center}
  	
  	h2 {
  		text-align: center;
  		font-size: 80px; 
  		font-family: fantasy;
  		text-align: center; 
  		color: grey; 
  		margin-top: 20px; 
  	}
  	
  	.header-container-right {
  		display: inline-block;
  	}
  	
  	#login {
  		margin-left:1000px;
  		font-family: fantasy;
  		color: white;
  		font-size: 30px;
  		margin-top: 20px;
  		text-decoration: none;
  	}
  	
  	.container {
  		width: 1320px;
  		margin: auto auto;
  		padding: 0 15px;
  		
  	}
  	
  	a {
  		text-decoration: none;
  	}
  	
  	.card {
  		margin:10px 10px;
  		display:inline-block;
  	}
  	
  	.card-title {
  		font-size: 20px
  	}

  </style>
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
<!---------헤더 아이콘--------->
<div id="header">
	<div class="header-container">
		<a href ="/Meg/home"><img id="home" src="/images/home.png"></a>
		<a href ="/Meg/board/list/page/1"><img id="home" src="/images/chat.png"></a>
		<a href ="/Meg/gallery"><img id="gallery" src="/images/gallery.png"></a>
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
        <h3>New York</h3>
        <p>We love the Big Apple!</p>
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

<!---------카드--------->
<div class="container">
  <h2>Meg's Fav Spot</h2>
  <div class="card" style="width:250px">
    <img class="card-img-top" src="/images/meg/m1.jpg" alt="Card image" style="width:100%">
    <div class="card-body">
      <h4 class="card-title">#Peru #MachuPicchu</h4>
      <p class="card-text">FINALLY, I'm here in #machupicchu ⛰</p>
      <a href="#" class="btn btn-primary">See Profile</a>
    </div>
  </div>
 
 <div class="card" style="width:250px">
   <img class="card-img-top" src="/images/meg/m2.jpg" alt="Card image" style="width:100%">
   <div class="card-body">
     <h4 class="card-title">#Mexico #RealDeCatorce</h4>
     <p class="card-text">Adiós México 🇲🇽👋 Esperame Peru 🇵🇪</p>
     <a href="#" class="btn btn-primary">See Profile</a>
   </div>
 </div>

 <div class="card" style="width:250px">
   <img class="card-img-top" src="/images/meg/m3.jpg" alt="Card image" style="width:100%">
   <div class="card-body">
     <h4 class="card-title">#Bolivia #Uyuni</h4>
     <p class="card-text">Fullmoon🌕 in Uyuni</p>
     <a href="#" class="btn btn-primary">See Profile</a>
   </div>
 </div>
 
 <div class="card" style="width:250px">
   <img class="card-img-top" src="/images/meg/m3.jpg" alt="Card image" style="width:100%">
   <div class="card-body">
     <h4 class="card-title">#Bolivia #Uyuni</h4>
     <p class="card-text">Fullmoon🌕 in Uyuni</p>
     <a href="#" class="btn btn-primary">See Profile</a>
   </div>
 </div>
 
</div>

</body>
</html>
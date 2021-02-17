<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Travel Gallery</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src='https://kit.fontawesome.com/a076d05399.js'></script>
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
<!---------카드--------->
<div class="container">
  <h2>South America</h2>
  <div class="card" style="width:250px">
    <img class="card-img-top" src="/images/meg/m1.jpg" alt="Card image" style="width:100%">
    <div class="card-body">
      <h4 class="card-title">#Peru #MachuPicchu</h4>
      <p class="card-text">FINALLY, I'm here in ⛰</p>
      <a href="https://www.instagram.com/p/BUmm9NhAVux1KalUdDUQX-zkJ90l6EiRmXI8To0/" class="btn btn-primary btn-sm">Check it out</a>
    </div>
  </div>
 
 <div class="card" style="width:250px">
   <img class="card-img-top" src="/images/meg/m5.JPG" alt="Card image" style="width:100%">
   <div class="card-body">
     <h4 class="card-title">#Chile #Atacama</h4>
     <p class="card-text">Best sunset ever</p>
     <a href="https://www.instagram.com/p/BVSCeD0A2OZJ5rY8kj20_oe-wSL4HH9hoXxoSA0/" class="btn btn-primary btn-sm">Check it out</a>
   </div>
 </div>

 <div class="card" style="width:250px">
   <img class="card-img-top" src="/images/meg/m3.jpg" alt="Card image" style="width:100%">
   <div class="card-body">
     <h4 class="card-title">#Bolivia #Uyuni</h4>
     <p class="card-text">Fullmoon🌕 in Uyuni</p>
     <a href="https://www.instagram.com/p/BVKqMcqAeN7j9ILcXjc37Kual8BkN2HNJVhDWk0/" class="btn btn-primary btn-sm">Check it out</a>
   </div>
 </div>
 
 <div class="card" style="width:250px">
   <img class="card-img-top" src="/images/meg/m4.JPG" alt="Card image" style="width:100%">
   <div class="card-body">
     <h4 class="card-title">#iguazú #argentina</h4>
     <p class="card-text">Garganta del diablo</p>
     <a href="https://www.instagram.com/p/BVkG8M0g054AdDxjiYqemIQ23LbHaEpAsWEexM0/" class="btn btn-primary btn-sm">Check it out</a>
   </div>
 </div>
 
 <div class="container">
  <h2>Mexico</h2>
  <div class="card" style="width:250px">
    <img class="card-img-top" src="/images/meg/12.JPG" alt="Card image" style="width:100%">
    <div class="card-body">
      <h4 class="card-title">#Guanajuato</h4>
      <p class="card-text">En San Miguel de Allende</p>
      <a href="https://www.instagram.com/p/BQJjjrIjsN_DozVq0F9xwTA0BFZzA1fUG7rEJA0/" class="btn btn-primary btn-sm">Check it out</a>
    </div>
  </div>
 
 <div class="card" style="width:250px">
   <img class="card-img-top" src="/images/meg/m10.JPG" alt="Card image" style="width:100%">
   <div class="card-body">
     <h4 class="card-title">#CostaBaja</h4>
     <p class="card-text">Best sunset sailing ever 🌅</p>
     <a href="https://www.instagram.com/p/BRUcu8vAONaF-7pn_BgPWgSNCQzuU7cSRjKk6w0/" class="btn btn-primary btn-sm">Check it out</a>
   </div>
 </div>

 <div class="card" style="width:250px">
   <img class="card-img-top" src="/images/meg/m8.JPG" alt="Card image" style="width:100%">
   <div class="card-body">
     <h4 class="card-title">#Teotihuacán</h4>
     <p class="card-text">Pyramids of ☀️🌙</p>
     <a href="https://www.instagram.com/p/BS90V-8ghYCnUKEjcI7zlmqOcpl42WEtU5pMh00/" class="btn btn-primary btn-sm">Check it out</a>
   </div>
 </div>
 
 <div class="card" style="width:250px">
   <img class="card-img-top" src="/images/meg/m11.JPG" alt="Card image" style="width:100%">
   <div class="card-body">
     <h4 class="card-title">#Baja California Sur</h4>
     <p class="card-text">Whatta vacation 🔆🕶</p>
     <a href="https://www.instagram.com/p/BRRsXavAxMVtVj88B7vFfn6H_iJTy9w3HwtsIk0/" class="btn btn-primary btn-sm">Check it out</a>
   </div>
 </div>
 
</div>

</body>
</html>
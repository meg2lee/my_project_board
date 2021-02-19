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
  	h3{
  		text-align: center;
  		font-size: 30px;
  		font-family: "papyrus";
  		margin-top: 20px;
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
		margin-left:250px;		
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
	</div>	
	<div class="welcome">
		Welcome ${member}!		
	</div>	
	<c:choose>
		<c:when test="${member}==null">
			<div class="login">
				<a href ="/Meg/login" id="login">Login</a>
			</div>		
		</c:when>		
		<c:otherwise>
			<div class="logout">
				<a href ="/Meg/logout" id="logout">Logout</a>
			</div>		
		</c:otherwise>	
	</c:choose>	
</div>
<!---------카드--------->
<h3>“In the end,<br> we only regret the chances we didn’t take”</h3>
<div class="container">
  
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
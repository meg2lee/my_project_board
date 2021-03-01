<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login page</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src='https://kit.fontawesome.com/a076d05399.js'></script>
<style type="text/css">

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
	
	.login, .logout {
  		display: inline-block;
  		font-family: fantasy;
  		color: black;
  		font-size: 50px; 	
  		text-decoration: none;
  		margin-left: 300px
  	}
  	
  	.welcome {
		display: inline-block;
		font-size: 50px; 
		font-family: fantasy;
		color: darkgray; 
		margin-left:330px;		
  	}
  	
  	
  	.header-container{
  		display: inline-block;
  	}
  	
	div{
		border:1px solid transparent;	
	}
	
	input {
		margin-top:20px;
	}
		
	.container.main-login{	
	    margin-top: 60px;  
	    text-align: center;
	}
	
	.container.main-login > h1 {
	    font-size: 3.0rem;
	    margin-top: 50px;
	    margin-bottom: 20px;
	    color: #685547;
	}
	
	#user_id_login, #user_pw_login {
	    height: 30px;
	    width: 400px;	   
	    font-size: 1.5rem;
	    border: 0px;
	    border-bottom: 1px solid black;
	    background-color: transparent;
	}
	
	#btn_login {
	    align-items: center;
	    width: 400px;
	    height: 40px;
	    background-color:  #fde982;
	    margin-top: 30px;
	    color: #685547;
	    font-size: 1.5rem;
	    font-style: bold;
	    border-color: transparent;
	}
	
	#btn_join{
		align-items: center;
	    width: 400px;
	    height: 40px;
	    background-color: #685547;    
	    color: #fde982;
	    font-size: 1.5rem;
	    font-style: bold;
	    border-color: transparent;
	}
	
	#btn_login:hover{
	    color: #f8f7e6;
	    background-color: #685547;
	    
	}
	
	#btn_join:hover{
	    color: #685547;
	    background-color: #f8f7e6;
	    
	}

</style>
</head>
<body>
<div id="header">
	<div class="header-container">
		<a href ="/Meg/home"><img id="home" src="/images/home.png"></a>
		<a href ="/Meg/board/list/page/1"><img id="home" src="/images/chat.png"></a>
		<a href ="/Meg/gallery"><img id="gallery" src="/images/gallery.png"> </a>
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

<div id="main">
<div class="container main-login">
	<h1>WELCOME</h1>
	<form id="login" action="/Meg/user/login" method="post">
		<input type="email" name="email" id="user_id_login" size="40" placeholder="Email" required><br>
		<input type="password" name="password" id="user_pw_login" size="40" placeholder="Password" required><br>
		<div class="warning"></div>
		<div>
			<button type="submit" id="btn_login">LOGIN</button>
		</div>
		<div>
			<button type="submit" id="btn_join" onclick="location.href='/Meg/register'">SIGN UP</a>
		</div>
	
	</form>
</div>
</div>
</body>
</html>
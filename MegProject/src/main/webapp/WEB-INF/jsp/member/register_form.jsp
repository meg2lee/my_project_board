<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
		
	.container.main-join{	
	    margin-top: 60px;  
	    text-align: center;
	}
	
	.container.main-join > h2 {
	    font-size: 2.0rem;
	    margin-top: 20px;
	    color: #685547;
	}
	
	.tit {
		text-align: left;
		margin-left: 350px;
		margin-top:20px;
		
	}

	#user_id_login, #user_name_login,#user_pw_login {
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
	    margin-bottom: 30px;
	    color: #685547;
	    font-size: 1.5rem;
	    font-style: bold;
	    border-color: transparent;
	}
	
	#btn_login:hover{
	    color: #f8f7e6;
	    background-color: #685547;
	    
	}
	
  	
</style>
<script src='https://code.jquery.com/jquery-3.5.1.min.js'></script>
<script>
	function addUser(){
	
		$.ajax({ 
			url:'/Meg/join', 
			method: 'post',
			data: $("#join").serialize(),
			dataType:'text',
			success:function (res){
				if(res.trim()=='true'){
					alert("Successfully joined")
					location.href = "/Meg/login"
				} else {
					alert("failed")
					return false;
				}
			}, 
			error:function(xhr, status, err){
				alert(status+', '+err);
			}
		
		});
	}
</script>
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
	<c:if test="${member}==null">
		<div class="login">
			<a href ="/Meg/login" id="login">Login</a>
		</div>		
	</c:if>		
	<c:if test="${member}!=null">
		<div class="logout">
			<a href ="/Meg/logout" id="logout">Logout</a>
		</div>		
	</c:if>		
</div>	

<div id="main">
<div class="container main-join">
	<h2>JOIN US!</h2>
	<form method="post" id="join">
		<div class="tit">EMAIL</div>
		<input type="email" name="email" id="user_id_login" size="40" required>
		<div class="tit">PASSWORD</div>
		<input type="password" name="password" id="user_pw_login" size="40" required>
		<div class="tit">NAME</div>
		<input type="text" name="name" id="user_name_login" size="40" required><br>
		<div class="warning"></div>
		<div>
			<button type="button" onclick="addUser();" id="btn_login">SIGN IN</button>
		</div>
	</form>
</div>
</div>
</body>
</html>
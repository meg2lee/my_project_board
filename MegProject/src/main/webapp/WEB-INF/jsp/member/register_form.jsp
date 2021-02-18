<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	div{
		border:1px solid transparent;		
		}
		
	.container.main-join{	
	    margin-top: 100px;  
	    text-align: center;
	}
	
	.container.main-join > h1 {
	    font-size: 4.0rem;
	    color: #685547;
	}
	
	.container.main-join > h2 {
	    font-size: 2.0rem;
	    margin-top: 20px;
	    color: #685547;
	}
	
	#user_id_login, #user_name_login {
	    height: 30px;
	    width: 400px;	    
	    font-size: 1.5rem;
	    border: 0px;
	    border-bottom: 1px solid black;
	    background-color: transparent;
	}
	
	#user_pw_login {
	    
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
	.join, .find{
	    display: inline;
	    text-align: center;
	}
	.join{
	    margin-right: 195px;
	}
	.join > a, .find > a{
	    font-size: 1.5rem;
	    color: #685547;
	    font-style: bold;    
	}
	
	.join > a:hover, .find > a:hover{
	    border-bottom: 1px solid black;
	}
	
	.join-member > hr {
	    color: #685547;
	}
	
	#header {
	  width: 100%;
	  height: 65px;
	  background-color: #708090;
	  top: 0px;
	  z-index: 2000;
	}
	
	#home,#chat {
		width: 50px;
		height: 50px;
		margin-top: 10px;
		margin-left: 10px;
	}
	
	#login {
  		margin-left:1000px;
  		font-family: fantasy;
  		color: white;
  		font-size: 30px;
  		margin-top: 20px;
  		text-decoration: none;
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
					location.href = "Meg/login"
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
		<a href ="/Meg/login" id="login">Login</a>
	</div>	
</div>

<div id="main">
<div class="container main-join">
	<h2>JOIN</h2>
	<form method="post" id="join">
		<label for="email">EMAIL</label><br>
		<input type="email" name="email" id="user_id_login" size="40" required><br>
		<label for="password">PASSWORD</label><br>
		<input type="password" name="password" id="user_pw_login" size="40" required><br>
		<label for="name">NAME</label><br>
		<input type="name" name="name" id="user_name_login" size="40" required><br>
		<div class="warning"></div>
		<div>
			<button type="button" onclick="addUser();" id="btn_login">JOIN</button>
		</div>
		<div>
			<a href="/Meg/login">LOGIN</a>
		</div>	
	</form>
</div>
</div>
</body>
</html>
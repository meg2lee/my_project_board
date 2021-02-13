<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 리스트</title>
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
	
	#home,#chat {
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
  		height: 300px; 
  		text-align: center; 
  		color: grey; 
  		margin-top: 20px; 
  		line-height: 250px
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
  	
  	.main-bottom-board {
  		height: 865px;
  	}
  	
  	.container {
  		width: 1320px;
  		margin: 0 auto;
  		padding: 0 15px;
  	}
  	
  	.board-grid-box {
  		width: 1160px;
  		height: 600px;
  		margin: 120px auto 0 auto;
  		display: grid;
  		grid-template-columns :1fr 1fr;
  		grid-template-rows: 1fr 1fr;
  		grid-template-areas: "td qt" "td call";
  		column-gap: 8px;
  		row-gap:8px;
  	}
  	
  	.today-board {
  		grid-area:td;
  		border-color: #708090;
  		border-style :dashed;
  		border-width: 2px;
  		position: relative;
  	}
  	
  	.today-board > h3 {
  		text-align: center;
  		padding-top: 65px;
  	}
  	
  	.today-board-date {
  		margin-left: 50px;
  	}
  	
  	.today-line {
  		
  	}
  	
  	.community-list {
  		
  	}
  	
  	ul li {
  		list-style-type:none;
  	}
  	
  	a {
  		text-decoration: none;
  	}
  	

  </style>
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
<div id="header">
	<div class="header-container">
		<a href ="/Meg/home"><img id="home" src="/images/home.png"></a>
		<a href ="/Meg/board/list/page/1"><img id="home" src="/images/chat.png"></a>
		<a href ="/Meg/login" id="login">Login</a>
	</div>	

</div>
<div id="demo" class="carousel slide" data-ride="carousel">
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/images/la.jpg" alt="Los Angeles" width="1100" height="500">
      <div class="carousel-caption">
        <h3>Los Angeles</h3>
        <p>We had such a great time in LA!</p>
      </div>   
    </div>
    <div class="carousel-item">
      <img src="/images/chicago.jpg" alt="Chicago" width="1100" height="500">
      <div class="carousel-caption">
        <h3>Chicago</h3>
        <p>Thank you, Chicago!</p>
      </div>   
    </div>
    <div class="carousel-item">
      <img src="/images/ny.jpg" alt="New York" width="1100" height="500">
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
<div class="container main-bottom-board">
<div class="board-grid-box">
<div class="today-board">
	<h3>Community</h3>
	<span class="today-line"></span>
	<ul class="community-list">
		<li>		
			<a href="/Meg/board/detail?num=35">아무것도 하기 싫을 때, 무기력의 이유와 극복방법</a>
			<span class="today-board-date">2020.02.05</span>
		</li>

	</ul>
</div>	
</div>
</div>

</body>
</html>
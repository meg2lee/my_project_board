<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Travel Community</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <style>
  
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
	
	#login {
  		margin-left:1000px;
  		font-family: fantasy;
  		color: white;
  		font-size: 30px;
  		margin-top: 20px;
  		text-decoration: none;
  	}
	
	
  	table {text-align: center}
  	h1{text-align: center;font-size: 100px; font-family: fantasy;
  	height: 300px; text-align: center; color: grey; margin-top: 20px; line-height: 250px}
  	#head {
  		background-image: url("/images/company.jpg"); 
  		opacity:0.7;
  		text-align: center;
  		
  	}
  	
    #pagination,#searchBoard {text-align: center;}
    #pagination{text-align: center;margin-left: 39%;}
    
    .page-item {
    	color: gray;
    }
    #icon{text-align: right;margin-right: 20%;margin-bottom: }
    #question_div >a {
	    padding: .25rem .5rem;
	    position: absolute;
	    font-size: .875rem;
	    line-height: 1.5;
	    border-radius: .2rem;
	    width: 150px;
	    left: 150px;
    }
  </style>
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
<div id="header">
	<div class="header-container-left">
		<a href ="/Meg/home"><img id="home" src="/images/home.png"></a>
		<a href ="/Meg/board/list/page/1"><img id="home" src="/images/chat.png"></a>
		<a href ="/Meg/gallery"><img id="gallery" src="/images/gallery.png"></a>
		<a href ="/Meg/login" id="login">Login</a>
	</div>
</div>
<div class="container">
<div id="head">
	<h1>Community</h1>
</div>	
<table class="table table-hover">
	<thead>
		<tr id="top"><th>ORDER</th><th>TITLE</th><th>AUTHOR</th><th>DATE</th><th>VIEWS</th><th>LIKES</th></tr>
	</thead>
	<c:forEach var="b" items="${pageInfo.list}">
	
		<tr class="this">
		<c:forEach var="r" items="${rowNum}">
			<td>${r}</td>
		</c:forEach>
			<td>
				<c:if test="${b.pnum != 0 }"></c:if>
				<a href = "/Meg/board/detail?num=${b.num}" onclick="countView(${b.num});">${b.title}</a>
			</td>
			<td>${b.author}</td>
			<td>${b.wdate}</td>			
			<td>${b.views}</td>
			<td>${b.likes}</td>
		
		</tr>
	</c:forEach>
</table>
<ul id="pagination" class="pagination">
<c:choose> 
	<c:when test="${pageInfo.hasPreviousPage}">
		<li class="page-item"><a class="page-link" href="/Meg/board/list/page/${pageInfo.pageNum-1}">Previous</a></li>
	</c:when>
	<c:otherwise>
		<li class="page-item"><a class="page-link" href="javascript:void()">Previous</a></li>
	</c:otherwise>
</c:choose>
	<c:forEach var="p" items="${pageInfo.navigatepageNums}">
		<c:choose>
			<c:when test="${p==pageInfo.pageNum}">
				<li class="page-item active"> <a class="page-link" href="javascript:void()">${p}</a></li>
			</c:when>
			<c:otherwise>
			<a class="page-link" href="/Meg/board/list/page/${p}">${p}</a>
			</c:otherwise>
		</c:choose>
	</c:forEach>
<c:choose>
	<c:when test="${pageInfo.hasNextPage}">
		<li class="page-item"><a class="page-link" href="/Meg/board/list/page/${pageInfo.pageNum+1}">Next</a></li>
	</c:when>
	<c:otherwise>
		<li class="page-item"><a class="page-link" href="javascript:void()">Next</a></li>
	</c:otherwise>
</c:choose>

</ul>
	
</div><br>
<!-- search{s} -->
 <form action="/Meg/board/search" method="post">
<div class="form-group row justify-content-center">
	<div class="w100" style="padding-right:10px">
		<select class="form-control form-control-sm" name="searchType" id="searchType">
			<option value="title" selected="selected">Title</option>
			<option value="author">Author</option>
		</select>
	</div>
	<div class="w300" style="padding-right:10px">
		<input type="text" class="form-control form-control-sm" name="searchText" id="searchText">
	</div>
	<div>
		<button class="btn btn-sm btn-secondary" name="btnSearch" id="btnSearch"
		type="submit" value="btnSearch">Search</button>
	</div>
	<div style="position: relative;" id="question_div">
		<a href = "1/upload" class="btn btn-secondary btn-md">leave your question</a>	
	</div>
</div>
</form>

</body>
</html>
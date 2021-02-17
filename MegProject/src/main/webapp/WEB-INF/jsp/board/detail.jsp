<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>You are always welcome</title>
<style>

	body {background-image: url("/images/office.jpg");}
	#main_form label {margin-left: auto;margin-right: auto; font-size: 30px; font-family: fantasy;
	background-size: cover;}
	#head {margin-top:5%}
	.btn2 {text-align: center;font-size: 30px; font-family: fantasy;}
	#file {text-align: left;}
	#num {display:none;}
	#reply {margin-right: 0px}
	#text {width: 1000px; height: 100px; resize: none; margin-left: 40px}
	#file {margin-left: 40px}
	#writer {width: 100px}
	h1 {text-align: center}
	
	ul{font-weight: bold;}
	ul li {list-style-type: none; float:left; font-size: 20px;}
	li:first-child {margin-right:650px;}
	li:nth-child(2) {margin-right:30px}
	li:last-child {margin-right:0px}

	#contents {
		width:1070px;
		margin-left: 40px
	}
	
	#PreBoard,#nextBoard {
		margin-left: 50px;font-size: 24px;
	    font-weight: bold;
	    color: whitesmoke;
	    background-color: #708090;
	    border-color: #708090;
	    width: 40px;
	    height: 40px;
	    padding-bottom: 15px;
	    padding-left: 6px;
	    border-radius: 20px;    
	    left: 530px;
	    top: 20px;
    }
    
	#nextBoard {margin-left:1000px}

</style>
<meta charset="utf-8">
<script src="https://cdn.ckeditor.com/ckeditor5/24.0.0/classic/ckeditor.js"></script> 

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<script src='https://code.jquery.com/jquery-3.5.1.min.js'></script>
  <script>
 	function repl(parent_num){
 		location.href="/board/reply/"+parent_num;
 	}

	function deleteIt(num) { 
		
		$.ajax({ 
			url:'/Meg/board/detail', 
			method:'delete',
			data: {'num': num},
			dataType:'text',
			success:function (res){
				if(confirm("Would you like to delete below?")){
					location.href='/Meg/board/list/page/1';
				} else {
					return false;
				}
			}, 
			error:function(xhr, status, err){
				alert(status+', '+err);
			}
		
		});
	}
		
	function addComment(){

		$.ajax({ 
			url:'/comments/add', 
			method: 'post',
			data: $("#cmm").serialize(),
			dataType:'text',
			success:function (res){
				if(res.trim()=='true'){
					alert("comment added")
					location.reload();
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
	
	function deleteCmm(cno) { 
		
		$.ajax({ 
			url:'/comments/delete', 
			method:'delete',
			data: {'cno': cno},
			dataType:'text',
			success:function (res){
				if(confirm("Would you like to delete below?")){
					location.reload();
				} else {
					return false;
				}
			}, 
			error:function(xhr, status, err){
				alert(status+', '+err);
			}
		
		});
	}
		
	function comments(){
		var list = document.getElementById("commentsList");
		var status = $('#clist').value();
		
		if(status=='See comments'){
			list.style.display = 'block';
			var status = 'hide';
		}
		
		else{
			list.style.display = 'none';
			var status = 'See comments';
		}
	}
	
	function showNextBoard(num,page){
		
		console.log(num)
		
		$.ajax({
			url:'/Meg/board/move',
			method:'post',
			data:{'num': num
				  ,'page':page},    
			dataType:'text',
			success:function(res){
				location.href="/Meg/board/detail?num="+res
			},
			error:function(xhr, status, err){				
					alert("다음 게시물이 없습니다");
					window.location.reload();
			}
		});   
		
	}
	
	function showPreBoard(num,page){
		
		console.log(num)
		
		$.ajax({
			url:'/Meg/board/move',
			method:'post',
			data:{'num': num
				,'page':page},      
			dataType:'text',
			success:function(res){
				location.href="/Meg/board/detail?num="+res
			},
			error:function(xhr, status, err){
					alert("이전 게시물이 없습니다");
					window.location.reload();
			}
		});   
	}
	

	</script>
</head>
<body>
<c:set var="b" value="${board}"></c:set>
<br><br>
<div>
	<button type="button" id="PreBoard" onclick="showPreBoard(${board.num},1)">&#60;</button>
	<button type="button" id="nextBoard" onclick="showNextBoard(${board.num},2)">&#62;</button>
</div>
<div class="container">
<div id="head">
	<h1>${b.title}</h1>
</div><br><br>
<ul>
	<li>BY ${b.author}</li>
	<li>VIEWS ${b.views}</li>
	<li>${b.wdate}</li>
</ul>	
<br>

<!-- 게시글 상세내용 -->
	<form method="post" id="main_form">
		<div class="form-group">
	    <input type="hidden" class="form-control" id="num" name="num" value = "${board.num}">
	    <div id="contents">${board.contents}</div><br>
	    <div id = "file">
			<c:forEach var="file" items="${fileList}">		
				<a href="/Meg/download/${file.filename}">${file.filename}<br></a>	
			</c:forEach>	
			</div>
		</div>
		 <p class="btn">
		     <button type="button" onclick="repl('${board.num}')" 
		     class="btn btn-primary" id="reply">Reply</button>
		 </p>
	</form>
	<div>		
	</div>
	
<!-- 댓글리스트 --> 
<div id="commentsList">
	<table>
		<c:forEach var="cList" items="${commentList}">
			<tr><td>${cList.writer}</td><td>${cList.text}</td><td>${cList.regdate}</td>
			<td><input type="button" value="x" onclick="deleteCmm('${cList.cno}')"></td></tr>
		</c:forEach>
	</table><br>
</div><br>

<!-- 댓글작성기능 -->
	<form method="post" id="cmm">	
		<input type="hidden" id="num" name="num" value = "${board.num}">
		<label for="text"></label>
		<textarea id="text" name="text" placeholder="Leave your comments here"></textarea>
		<button type="button" onclick="addComment(${board.num});">Save</button>
	</form>

<!-- 메인페이지가기 & 게시글삭제 버튼 -->	
	<p class="btn2">
		<a href="/Meg/board/list/page/1" class="btn btn-primary btn-md">Main Page</a>
		<a href="javascript:deleteIt('${board.num}');" class="btn btn-primary btn-md">Delete</a>
		<a href="/Meg/board/edit?id=${board.num}" class="btn btn-primary btn-md">Edit</a>
	</p>
</div>

</body>
</html>
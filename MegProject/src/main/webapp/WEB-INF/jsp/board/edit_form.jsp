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
	#text {width: 700px}
	#writer {width: 100px}
	.ck .ck-editor{
		max-width: 500px
	}
	
	.ck-editor__editable{
		min-height:300px
	}


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

	function deleteIt(num) { 
		
		$.ajax({ 
			url:'/mybatis/board/detail', 
			method:'delete',
			data: {'num': num},
			dataType:'text',
			success:function (res){
				if(confirm("Would you like to delete below?")){
					location.href='/mybatis/board/list/page/1';
				} else {
					return false;
				}
			}, 
			error:function(xhr, status, err){
				alert(status+', '+err);
			}
		
		});
	}
		
	function updateIt() { 
		
		var form = $('form')[0];
		var formdata = new FormData(form);
		formdata.append('contents',editor.getData())
		
		$.ajax({ 
			url:'/Meg/board/detail', 
			method: 'post',
			data: formdata,
			enctype: 'multipart/form-data', /*전송방식*/
			processData: false,  /*query string 형식으로 보내지않음*/
	        contentType: false,  /*내가 서버에 보내는 데이터 */
			dataType:'text',
			success:function (res){
				if(res.trim() == 'true'){
					alert("amended");
					location.href="/Meg/board/list/page/1";
				} else {
					alert("amendum failed");
					return false;
				}		
			}, 
			error:function(xhr, status, err){
				alert(status+', '+err);
			}
		
		});	
	}	
	
	function deleteatt(filename,num) { 
		
		$.ajax({ 
			url:'/Meg/board/deleteatt', 
			method: 'delete',
			data: {'filename': filename, 'num':num},
			dataType:'text',
			success:function (res){
				if(confirm("Would you like to delete attachment?")){
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
	
	function reset(){
		editor.setData( '' );
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
	

	</script>
</head>
<body>
<div class="container">
<div id="head">
	<h2>Questionnaire Form</h2>
 	<p>Kindly fill up the below form</p> 
</div>
<!-- 게시글 상세내용 -->
	<form method="post" id="main_form">
		<div class="form-group">
		  <label for="num"></label>
	      <input type="text" class="form-control" id="num" name="num"
	      value = "${board.num}">
	      <label for="author">Name:</label>
	      <input type="text" class="form-control" id="author" name="author"
	      value = "${board.author}">
	      <label for="title">Title:</label>
	      <input type="text" class="form-control" id="title" name="title"
	      value="${board.title}">
	      <label for="contents">Contents:</label>
	      <textarea class="form-control" rows="10" id="contents" name="editor">${board.contents}</textarea>
	      <label for="files">Files:</label>
	      <input type="file" class="form-control" id="files" name="files" multiple="multiple">
	    </div>
	    <div id = "file">
		<c:forEach var="file" items="${fileList}">		
			<a href="/mybatis/download/${file.filename}" id="f">${file.filename}</a>
			<input type="button" value="x" onclick="deleteatt('${file.filename}','${file.num}')">	
		</c:forEach>	
	</div>
		 <p class="btn">
		     <button type="button" onclick="updateIt()" class="btn btn-primary">Submit</button>
		     <button type="reset" id="reset" class="btn btn-primary">Reset</button>
		 </p>
	</form>
	<div>		
	</div>

<!-- 메인페이지가기 & 게시글삭제 버튼 -->	
	<p class="btn2">
		<a href="/Meg/board/list/page/1" class="btn btn-primary btn-md">Main Page</a>
		<a href="javascript:deleteIt('${board.num}');" class="btn btn-primary btn-md">Delete</a>
	</p>
</div>
<script>
	var editor;
	
	ClassicEditor
	    .create( document.querySelector( '#contents' ) )
	    .then( newEditor => {
	    	editor = newEditor;
			} )
	    .catch( error => {
	        console.error( error );
	    } );
	
	$('#reset').click(function(){
		editor.setData( '' );
		input.value = null;
		
	})
</script>	
</body>
</html>
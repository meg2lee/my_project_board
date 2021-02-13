<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body {background-image: url("/images/office.jpg");}
	form {margin-left: auto;margin-right: auto; font-size: 30px; font-family: fantasy;
	background-size: cover;}
	#head {margin-top:10%;}
	.btn3 {text-align: center;font-size: 30px; font-family: fantasy;}
	#num {display:none;}

</style>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<script>
	function add(){

		$.ajax({ 
			url:'/board/reply/upload', 
			type:'post',
			data: $('form').serialize(), 
			dataType:'text',
			success:function (res){
				if(res.trim()=='true'){
					alert("successfully uploaded");
					location.href="/mybatis/board/list/page/1";
				} else {
					alert("failed");
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
<div class="container">
<div id="head">
 <h2>Reply Form</h2>
  <p>Kindly fill up the below form</p>
</div>
<form method="post">
    <div class="form-group">
      <input type="hidden" name="parent_num" value="${parent_num}">
   	  <label for="num"></label>
      <input type="text" class="form-control" id="num" name="num"
      value = "${board.num}">
      <label for="author">Name:</label>
      <input type="text" class="form-control" id="author" name="author">
      <label for="title">Title:</label>
      <input type="text" class="form-control" id="title" name="title">
      <label for="contents">Contents:</label>
      <textarea class="form-control" rows="5" id="contents" name="contents"></textarea>
      <button type="button" onclick="add();" class="btn btn-primary">Post</button>
      <button type="reset" class="btn btn-primary">Reset</button>
    </div> 
 </form>  
 </div>
<p class="btn3">
	<a href="/mybatis/board/list/page/1" class="btn btn-primary btn-md">Main Page</a>
</p>
</body>
</html>
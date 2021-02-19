<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body {background-image: url("/images/office.jpg");}
	form label {margin-left: auto;margin-right: auto; font-size: 30px; font-family: fantasy;
	background-size: cover;}
	#head {margin-top:10%;}
	.btn3 {text-align: center;font-size: 30px; font-family: fantasy;}
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

<script>
	function add(){
		
		var form = $('form')[0];
		var formdata = new FormData(form);
		formdata.append('contents', editor.getData());
		
		$.ajax({ 
			url:'/Meg/board/upload', 
			type:'post',
			data: formdata,
			enctype: 'multipart/form-data', /*전송방식*/
			processData: false,  /*query string 형식으로 보내지않음*/
	        contentType: false,  /*내가 서버에 보내는 데이터 */
			dataType:'text',
			success:function (res){
				if(res.trim()=='true'){
					alert("successfully uploaded");
					location.href="/Meg/board/list/page/1";
				} else {
					alert("upload failed");
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
 <h2>Questionnaire Form</h2>
  <p>Kindly fill up the below form</p>
</div>
<form action="/Meg/board/upload" method="post" enctype="multipart/form-data">
    <div class="form-group">
      <label for="author">Name:</label>
      <input type="text" class="form-control" id="author" name="author">
      <label for="title">Title:</label>
      <input type="text" class="form-control" id="title" name="title">
      <label for="contents">Contents:</label>
      <textarea class="form-control" rows="50" id="contents" name="contents"></textarea>
      <label for="files">Files:</label>
      <input type="file" class="form-control" id="files" name="files"  multiple="multiple">
      <button type="button" onclick="add();" class="btn btn-primary">Post</button>
      <button type="reset" class="btn btn-primary">Reset</button>
    </div> 
 </form>  
 </div>
<p class="btn3">
	<a href="/Meg/board/list/page/1" class="btn btn-primary btn-md">Main Page</a>
</p>
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
</script>
</body>
</html>


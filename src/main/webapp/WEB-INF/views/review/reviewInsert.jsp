<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container-fluid">
		<form class="col-md-6 mx-auto" action="./reviewInsert" method="post" enctype="multipart/form-data">
			<div class="mb-3">
				<input type="hidden" class="form-control" name="product_id" id="product_id" value="${param.product_id }" placeholder="Enter Title">
			</div>
			<div class="mb-3">
				<label for="category1" class="form-label">title</label>
				<input type="text" class="form-control" name="re_title" id="re_title" placeholder="Enter Title">
			</div> 
			
			<div class="mb-3">
				<label for="category1" class="form-label">contents</label>
				<textarea rows="10" cols="30" name="re_contents"></textarea>
			</div> 
			
			<div class="mb-3">
				<input type="hidden" class="form-control" name="re_writer" id="re_writer" value="${tuser}" placeholder="Enter Title">
			</div> 
			
			<div class="mb-3" id="f">
				<label for="photo" class="form-label">Photo</label>
				<input type="file" class="form-control put" name="files" id="files">
			</div>
			<button type="submit" class="btn btn-primary">ADD</button>
		</form>
	</div>
</body>
</html>
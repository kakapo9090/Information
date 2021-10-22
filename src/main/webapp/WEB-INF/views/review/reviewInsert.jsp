<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/reviewInsert.css" type="text/css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;500;700&display=swap" rel="stylesheet">
</head>
<body>
	<div class="modal_contents">
		<div class="modal_head">
			<h1>구매후기 작성</h1>
			<button class="modal_close" type="button">&times;</button>
		</div>
		<div class="modal_body">
			<div class="product_info">
				<div class="product_name">돼지고기</div>
				<div class="product_count">1개</div>
			</div>
			<div class="product_review">
				<form class="col-md-6 mx-auto" action="./reviewInsert" method="post" enctype="multipart/form-data">
					<div class="star_area">
						<h3 id="star_txt">상품에 만족하셨나요?</h3>
					</div>
					<div class="input_area">
						<input type="hidden" class="" name="product_id" id="product_id" value="${param.product_id }" placeholder="Enter Title">
						<input type="text" class="review_title" name="re_title" id="re_title" placeholder="제목을 입력해주세요">
						<textarea name="re_contents" id="re_contents" placeholder="후기를 입력해주세요"></textarea>
						<input type="hidden" class="" name="re_writer" id="re_writer" value="${tuser}" placeholder="Enter Title">
					</div>
					<div class="photo_area">
						<div class="mb-3" id="f">
							<label for="photo" class="form-label">Photo</label>
							<input type="file" class="form-control put" name="files" id="files">
						</div>
					</div>
					<div>
						<button type="submit" class="btn btn-primary">ADD</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	
</body>
</html>
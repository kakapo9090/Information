<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<div class="modal_head">
		<h1>구매후기 작성</h1>
		<button class="modal_close" type="button">&times;</button>
	</div>
	
	<div class="modal_body">
		<div class="product_info">
			<div class="product_name">${param.product_name }</div>
			<div class="product_count">0개</div>
		</div>
		<div class="product_review">
			<form class="" action="../review/reviewInsert" method="post" enctype="multipart/form-data">
				<div class="star_area">
					<h3 id="star_txt">상품에 만족하셨나요?</h3>
					<div class="star_box">
						<span class="star on"></span>
						<span class="star"></span>
						<span class="star"></span>
						<span class="star"></span>
						<span class="star"></span>				
					</div>
				</div>
				<div class="input_area">
					<input type="hidden" class="" name="product_id" id="product_id" value="${param.product_id }" placeholder="Enter Title">
					<input type="text" class="review_title" name="re_title" id="re_title" placeholder="제목을 입력해주세요">
					<textarea name="re_contents" id="re_contents" placeholder="후기를 입력해주세요"></textarea>
					<input type="hidden" class="" name="re_writer" id="re_writer" value="${tuser}" placeholder="Enter Title">
				</div>
				<div class="photo_area">
					<div class="photo_add" id="f">
						<button class="photo_icon" type="button"><img src="../resources/img/icon/picture.png" width="35px"></button>
					</div>
					<span>사진은 JPG, PNG 형식으로 최대 5개까지만 등록 가능합니다.</span>
				</div>
				<div>
					<button type="submit" class="btn_insert">ADD</button>
				</div>
			</form>
		</div>
	</div>

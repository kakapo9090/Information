<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<div class="modal_head">
		<h1>구매후기 작성</h1>
		<span class="modal_close">&times;</span>
	</div>
	
	<div class="modal_body">
		<div class="product_info">
			<div class="product_name">${param.product_name }</div>
		</div>
		<div class="product_review">
			<form class="review" action="../review/reviewInsert" method="post" enctype="multipart/form-data">
				<div class="star_area">
					<h3 id="star_txt">상품에 만족하셨나요?</h3>
					<div class="star_box">
						<span class="star">1</span>
						<span class="star">2</span>
						<span class="star">3</span>
						<span class="star">4</span>
						<span class="star">5</span>				
					</div>
					<input type="hidden" name="re_star" id="re_star">
				</div>
				<div class="input_area">
					<input type="hidden" class="" name="product_id" id="product_id" value="${param.product_id }" placeholder="Enter Title">
					<input type="text" class="review_title" name="re_title" id="re_title" placeholder="제목을 입력해주세요">
					<textarea name="re_contents" id="re_contents" placeholder="후기를 입력해주세요"></textarea>
					<input type="hidden" class="" name="re_writer" id="re_writer" value="${tuser.id}" placeholder="Enter Title">
				</div>
				<div class="photo_area">
					<div class="photo_add" id="f">
						<button type="button" class="fileAdd">파일추가</button>
						<div id="fileAddResult">
						</div>
						<div>사진은 JPG, PNG 형식으로 최대 5개까지만 등록 가능합니다.</div>
					</div>
				</div>
				<div class="btn_area">
					<button type="button" class="btn_insert">등록하기</button>
				</div>
			</form>
		</div>
	</div>
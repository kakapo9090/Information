/**
 * 
 */

 /*후기 list*/
 getReviewList(1);
 
 /*후기 별점*/
 getReviewStar();
 
 let count=0;
 let update_count=0;
/*후기 list pager*/
$(".review_list").on("click", ".re_page", function(){
	let pn = $(this).attr("data-review-page");
	getReviewList(pn);
})

 let file = '<div class="input-group">';
 file = file + '<input type="file" name="re_files" id="re_files" class="form-control">';
 file = file + '<button class="file_del" type="button">&times;</button>';
 file = file + '</div>';

/* X 누르면 모달 닫기*/
$(document).on("click", ".modal_close", function(){
	$(".modal").modal('hide');
	count=0;
	update_count=0;
})




/*리뷰 수정페이지에서 파일 삭제하기*/
$(document).on("click", ".file_delete", function(){
	let fileNum = $(this).attr("data-files-num");
	let fileName = $(this).attr("data-files-name");
	let selector = $(this);
	$.ajax({
		type : "POST",
		url : "../review/reFileDelete",
		data : {
			re_fileNum : fileNum,
			re_fileName : fileName
		},
		success : function(result) {
			selector.parent().remove();
			updateCount();
		}
	})
})

/*버튼 클릭 시 파일 추가 input 생성*/
$(document).on("click", ".fileAddUpdate", function(){
	let fileSize =  $(document).find(".file_delete").attr("data-files-size");
	let totalCount = 5-fileSize;
	console.log(fileSize);
	if(update_count<totalCount){
		$(this).next().append(file);
		update_count++;
	} else {
		alert("이미지파일은 최대 5개까지 등록가능합니다.");
	}
})



/*이미지 파일 추가하기*/
$(document).on("click", ".fileAdd", function(){
	if(count<5){
		$(this).next().append(file);
		count++;
	} else {
		alert("이미지파일은 최대 5개까지 등록가능합니다.");
	}
})

/*X 버튼 클릭 시 input tag 삭제*/
$(document).on("click", ".file_del", function(){
	$(this).parent().remove();
	count--;
})

/*후기 수정하기*/
$(document).on("click", ".review_update", function(){
	let reNum = $(this).attr("data-review-num");
	let productName = $(".product_name").html();
	let productId = $(".product_id").html();
	$.ajax({
		type : "GET",
		url : "../review/reviewUpdate",
		data : {
			re_num : reNum,
			product_id : productId,
			product_name : productName
		},
		success : function(result){
			result = result.trim();
			$(".modal_contents").html(result);
			$(".modal").modal('show');
			 reviewUpdate();
		},
		error : function(xhr, status, error){
				alert("후기가 삭제되지 못했습니다");
		}	
	})
})

/*후기 삭제하기*/
$(document).on("click", ".review_delete", function(){
	let reNum=$(this).attr("data-review-num");
	let delConfirm = confirm('후기를 삭제하시겠습니까?');
	if(delConfirm){
		$.ajax({
			type : "POST",
			url : "../review/reviewDelete",
			data : {
				re_num : reNum
			},
			success : function(result){
				result = result.trim();
				if(result>0){
					alert("후기가 삭제되었습니다.");
					getReviewList(1);
				} else{
					alert("후기가 삭제되지 못했습니다");
				}
			},
			error : function(xhr, status, error){
				alert("후기가 삭제되지 못했습니다");
			}			
		});		
	} else {
		
	}		
});

/*후기 상세보기 page*/	
$(".review_list").on("click", ".review_detail", function(){
	let reNum=$(this).attr("data-review-num");
	console.log(reNum);
	$.ajax({
		type : "GET",
		url : "../review/reviewDetails",
		data : {
			re_num:reNum
		},
		success : function(result){
			result = result.trim();
			$("#review_contents"+reNum).html(result);
			$("#review_contents"+reNum).toggle();
			$("#review_contents"+reNum).toggleClass("up");
		},
		error : function(xhr, status, error){
			console.log(error);
		}
	})
});

/*후기쓰기 누르면 후기쓰기 모달 창으로*/
$(".btn_write").click(function(){
	let productId = $(this).attr("data-product-id");
	let productName = $(this).attr("data-product-name");
	$.ajax({
		type : "GET",
		url : "../review/reviewInsert",
		data : {
			product_id : productId,
			product_name : productName,
		},
		success : function(result) {
			result = result.trim();
			$(".modal_contents").html(result);
			$(".modal").modal('show');
			
		}
	})
})

  /*insert page에서 별점주기 이벤트*/
$(document).on("click", ".star", function(){
	$(this).parent().children("span").removeClass("on");
	$(this).addClass("on").prevAll("span").addClass("on");
	let star = $(this).html();
	console.log(star);
	$("#re_star").val(star);
})

/*insert page에서 별점, 제목, 후기 없으면 alert 다 있으면 insert*/
$(document).on("click", ".btn_insert", function(){
	let title = $("#re_title").val().length;
	let contents = $("#re_contents").val().length;
	let re_star = $("#re_star").val().length;
	if(title == 0 || contents == 0 || re_star == 0){
		
		alert("별점, 제목, 후기 중 입력되지 않은 정보가 있습니다.");
	} else {
		$(".review").submit();
	}
})

/*update page에서 별점, 제목, 후기 없으면 alert 다 있으면 update*/
$(document).on("click", ".btn_update", function(){
	let title = $("#re_title").val().length;
	let contents = $("#re_contents").val().length;
	let re_star = $("#re_star").val().length;
	if(title == 0 || contents == 0 || re_star == 0){
		
		alert("별점, 제목, 후기 중 입력되지 않은 정보가 있습니다.");
	} else {
		$(".review").submit();
	}
})



/*
window.onclick = function(event){
	if(event.target == modal){
		$(".modal").attr("style.display","none");
	}
}*/

function setCount(c){
	count = c;
}

/*리뷰 수정 시 있는 파일을 삭제하면 총 파일개수 중 1개 차감*/
function updateCount(){
	update_count--;
}

/*기존의 별점 가져오기*/
function reviewUpdate(){
	let star = $("#re_star").val();
	console.log(star);
	$(".star").eq(star-1).addClass("on").prevAll("span").addClass("on");	
}

/*상품 상세 화면에 해당 상품의 평균 별점 표시*/
function getReviewStar(){
	let id = $(".review_rating").attr("data-product-id");
	$.ajax({
		type : "GET",
		url : "../review/reviewStar",
		data : {
			product_id : id
		},
		success : function(result){
			result = result.trim();
			$(".review_rating").html(result);
		},
		error : function (xhr, status, error) {
			console.log(error);
		}
	})
}
 
/*후기 list 함수*/    
 function getReviewList(pageNumber) {
 	let id = $(".review_list").attr("data-product-id");
 	$.ajax({
    	type : "GET",
    	url : "../review/reviewList",
    	data : {
    		product_id:id,
    		pn:pageNumber
    	},
    	success : function (result) {
    		result = result.trim();
    		$(".review_list").html(result);
		},
		error : function (xhr, status, error) {
			console.log(error);
		}
    });	
 }
 

 
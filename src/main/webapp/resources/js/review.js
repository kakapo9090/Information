/**
 * 
 */

 /*후기 list*/
 getReviewList(1);
 
/*후기 list pager*/
$(".review_list").on("click", ".page", function(){
	let pn = $(this).attr("data-review-page");
	getReviewList(pn);
})

/*후기 수정하기*/
$(document).on("click", ".review_update", function(){
	let reNum = $(this).attr("data-review_num");
	console.log("update");
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

/* X 누르면 모달 닫기*/
$(document).on("click", ".modal_close", function(){
	$(".modal").modal('hide');
})

/*
window.onclick = function(event){
	if(event.target == modal){
		$(".modal").attr("style.display","none");
	}
}*/
 
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
 
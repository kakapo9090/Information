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

/*후기 상세보기 page*/
let reNum="";	
$(".review_list").on("click", ".review_detail", function(){
	reNum=$(this).attr("data-review-num");
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

/*/*후기쓰기 누르면 후기쓰기 모달 창으로
$(".btn_write").click(function(){
	let productId = $(this).attr("data-product-id");
	$.ajax({
		type : "GET",
		url : "../review/reviewInsert",
		data : {
			product_id : productId
		},
		success : function(result) {
			result = result.trim();
			$(".review_insert").html(result);
			$(".modal").modal('show');
			
		}
	})
})

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
 
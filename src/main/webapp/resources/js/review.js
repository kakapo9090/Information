/**
 * 
 */
 
 /**
 * 
 */
 
 getReviewList(1);

$(".review_list").on("click", ".page", function(){
	let pn = $(this).attr("data-review-page");
	getReviewList(pn);
})


let num="";	
$(".review_list").on("click", ".review_detail", function(){
	num=$(this).attr("data-review-num");
	console.log(num);
	$.ajax({
		type : "GET",
		url : "../review/reviewDetails",
		data : {
			re_num:num
		},
		success : function(result){
			result = result.trim();
			$("#review_contents"+num).html(result);
			$("#review_contents"+num).toggle();
			$("#review_contents"+num).toggleClass("up");
		},
		error : function(xhr, status, error){
			console.log(error);
		}
	})
});
 


    
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
 
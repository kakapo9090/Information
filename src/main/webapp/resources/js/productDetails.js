/**
 * 
 */
 
 /*버튼 클릭 시 카운트, 총 합계비용 증가, 감소*/
$(".up").click(function(){
let total_count = $(".inp").val();
let price = $(".inp").attr("data-product-price");
	if(total_count<10){
		total_count++;
		$(".inp").val(total_count);	
		price = price * total_count;
		console.log(price);
		$(".total_price").html(price);
	} else{
		alert("최대 10개까지 구매가능 합니다");
	}
});

$(".down").click(function(){
	let total_count = $(".inp").val();
	let price = $(".inp").attr("data-product-price");
	if(total_count==1){
		alert("1개 이상 구매해야 합니다");
	} else {
		total_count--;
		$(".inp").val(total_count);
		price = price * total_count;
		console.log(price);
		$(".total_price").html(price);
	}
});



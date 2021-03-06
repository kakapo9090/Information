/**
 * 
 */


/*li의 a 태그 선택 시 해당 태그에 클래스 on 추가*/
$(".tab_link").click(function(){
	$(this).parents("ul").find("a").removeClass("on");
	$(this).addClass("on");
})

 /*+버튼 클릭 시 카운트, 총 합계비용 증가*/
$(".up").click(function(){
let amount = $(".inp").val();
let price = $(".inp").attr("data-product-price");
	if(amount<10){
		amount++;
		$(".inp").val(amount);	
		price = price * amount;
		console.log(price);
		$(".total_price").html(price);
	} else{
		alert("최대 10개까지 구매가능 합니다");
	}
});

/*-버튼 클릭 시 카운트, 총 합계비용 감소*/
$(".down").click(function(){
	let amount = $(".inp").val();
	let price = $(".inp").attr("data-product-price");
	if(amount==1){
		alert("1개 이상 구매해야 합니다");
	} else {
		amount--;
		$(".inp").val(amount);
		price = price * amount;
		console.log(price);
		$(".total_price").html(price);
	}
});

/*장바구니 버튼 클릭 시 로그인 여부 확인 후 로그인이 되어 있다면 장바구니 페이지로*/
$(".goCart").click(function(){
	let userId=$("#id").val();
	if(userId != ""){
		$(this).attr("type", "submit");
	}else {
		alert("해당 상품을 장바구니에 넣으려면 로그인이 필요합니다.")
		location.href="../link/login";
	}
})
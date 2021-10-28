/**
 *  상품 추가 - 카테고리 클릭
 */
 
 let instantSelect = '<select class="form-select instant" name="category" aria-label="Default select example">';
instantSelect = instantSelect+'<option selected>인스턴트 카테고리</option><option  value="1101">라면</option>';
instantSelect = instantSelect+'<option value="1102">컵라면</option><option value="1201">죽/스프/소스</option>';
instantSelect = instantSelect+'<option value="1202">즉석밥/컵밥/국</option><option value="1203">통조림</option>';
instantSelect = instantSelect+'<option value="1301">만두</option><option value="1302">튀김류</option>;'
instantSelect = instantSelect+'<option value="1303">안주</option></select>';
 
 $('#instant').click(function(){
	if($('.categorySelect') !=null){
		$('.categorySelect').html("");
	};
	$('.categorySelect').html(instantSelect);
});


let drinkSelect = '<select class="form-select drink" name="category" aria-label="Default select example"><option selected>음료 카테고리</option>';
drinkSelect = drinkSelect+ '<option value="2101">생수</option><option value="2102">탄산수</option><option value="2201">두유</option>';
drinkSelect = drinkSelect+'<option value="2202">아몬드유</option><option value="2301">차</option><option value="2302">홍차</option><option value="2303">전통음료</option>';
drinkSelect = drinkSelect+'<option value="2304">커피</option><option value="2401">과일주스</option><option value="2402">과채주스</option><option value="2501">탄산음료</option>';
drinkSelect = drinkSelect+'<option value="2502">이온음료</option><option value="2503">비타민음료</option><option value="2601">전통주</option><option value="2602">와인</option><option value="2603">위스키</option></select>';

$('#drink').click(function(){
	if($('.categorySelect') !=null){
		$('.categorySelect').html("");
	};
	$('.categorySelect').html(drinkSelect);
});


let freshSelect = '<select class="form-select fresh" name="category" aria-label="Default select example">';
freshSelect= freshSelect+ '<option selected>신선식품 카테고리</option><option value="3101">돼지고기</option><option value="3102">소고기</option><option value="3103">닭고기/오리고기</option>';
freshSelect= freshSelect+ '<option value="3201">생선류</option><option value="3202">연체류/갑각류/어패류</option><option value="3203">해조류/건어물</option><option value="3301">과일</option>';
freshSelect= freshSelect+ '<option value="3302">야채</option></select> ';

$('#fresh').click(function(){
	if($('.categorySelect') !=null){
		$('.categorySelect').html("");
	};
	$('.categorySelect').html(freshSelect);
});


let snackSelect = '<select class="form-select snack" name="category" aria-label="Default select example"><option selected>간식 카테고리</option>';
snackSelect=snackSelect+'<option value="4101">국산과자</option><option value="4102">수입과자</option><option value="4200">시리얼</option>';
snackSelect=snackSelect+'<option value="4300">초콜릿</option><option value="4401">식빵</option><option value="4402">케익</option><option value="4403">잼</option><option value="4500">아이스크림</option></select>';

$('#snack').click(function(){
	if($('.categorySelect') !=null){
		$('.categorySelect').html("");
	};
	$('.categorySelect').html(snackSelect);
});
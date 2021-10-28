$(function(){
	
	//장바구니 전체 삭제
	 $("#btnDelete").click(function(){
	        if(confirm("장바구니를 비우시겠습니까?")){
	            location.href="${pageContext.request.contextPath}/cart/deleteAll.do";
	            alert("장바구니를 모두 비웠습니다!");
	        }
	    });
	    
	 //장바구니 수정
	 $("#btnUpdate").click(function(){
		 	alert('수량이 변경되었습니다!');
	 });
	 
	 
	 //장바구니-주문버튼
	 $("#btnOrder").click(function(){
		location.href="./order.do";
	});
	 
	 //주문페이지-돌아가기
	 $("#btnBack").click(function(){
		location.href="./list.do";
	});
	 
	 
	//완료페이지
	$(".btn-main").click(function(){
		location.href="../"
	});	
 	
 	//
 	$("#btnPay").click(function(){
	
	});
		 
		 
});//자바스크립트 종료
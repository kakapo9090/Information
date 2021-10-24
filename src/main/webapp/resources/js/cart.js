/**
 * cart.js
 */
 $(function(){
	
	//장바구니 전체 삭제
	 $("#btnDelete").click(function(){
	        if(confirm("장바구니를 비우시겠습니까?")){
	            location.href="${pageContext.request.contextPath}/cart/deleteAll.do";
	            alert("장바구니를 모두 비웠습니다!");
	        }
	    });
	    
	 //장바구니 수정 - 미완성
	 $("#btnUpdate").click(function(){
		 	alert('수량이 변경되었습니다!');
		 	let aaa = $('#amount').val();
			console.log(aaa);
	 });
	 
		
 	
		 
		 
});//자바스크립트 종료
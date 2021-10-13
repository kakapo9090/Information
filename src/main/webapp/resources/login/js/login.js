$(document).ready(function(){
	$("#btnLogin").click(function(){
		var id = $("#id").val();
		var pw = $("#pw").val();
		
		if (id == "") {
			alert("아이디를 입력하세요")
			$("#id").focus();
			return;
		}
		if (pw == "") {
			alert("비밀번호를 입력하세요")
			$("#pw").focus();
			return;
		}
		
	var jsonObj = {
		ID : $("#id").val(),
		PW : $("#pw").val(),
	};
	$.ajax({
	    url:'../link/loginPost' // 요청 할 주소
	    ,async:true// false 일 경우 동기 요청으로 변경
	    ,type:'POST' // GET, PUT
	    ,contentType: "application/json;charset=UTF-8"
	    ,data: JSON.stringify(jsonObj)// 전송할 데이터
	    ,dataType:'json'// xml, json, script, html
	    , beforeSend:function(jqXHR) {}// 서버 요청 전 호출 되는 함수 return false; 일 경우 요청 중단
	    ,success:function(data) {

		}// 요청 완료 시
	    ,error:function(jqXHR) {}// 요청 실패.
	    ,complete:function(data) {
			console.log(data.responseText);
			if(data.responseText == "0"){
				alert("아이디나 패스워드가 다릅니다.");
			}
			else{
				location.href = "../";
			}	
	}// 요청의 실패, 성공과 상관 없이 완료 될 경우 호출
	});
		
	})
})
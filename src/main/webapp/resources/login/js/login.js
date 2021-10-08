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
		document.page1.action = "mypage"
		document.page1.submit();
	})
})
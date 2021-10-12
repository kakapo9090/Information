 const frm = document.getElementById('frm');
 const id = document.getElementById('id');
 const idResult = document.getElementById('idResult');
 const idCheck = document.getElementById('idCheck');
 const pw = document.getElementsByClassName('pw');
 const put = document.getElementsByClassName("put");
 const btn = document.getElementById('btn');
 
 var dupId = true;

btn.addEventListener('click', function(){
	let s1 = checkEmpty(put);
	let s2 = checkEqual(pw[0], pw[1]);
	let s3 = checkLength();
	
	if ($("#id").val() != null && !dupId){
		var jsonObj = {
			ID : $("#id").val(),
			PW : $("#pw1").val(),
			NAME : $("#name").val(),
			PHONE : $("#phone1").val() + $("#phone2").val() +$("#phone3").val() ,
			EMAIL : $("#email").val(),
			ADDRESS : $("#address1").val() + " " + $("#address2").val()
		};
		
		console.log(jsonObj);
		
		$.ajax({
		    url:'../link/setNew' // 요청 할 주소
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
					alert("회원가입 실패했습니다.");
				}
				else{
					location.href = "../link/login";
				}	
		}// 요청의 실패, 성공과 상관 없이 완료 될 경우 호출
		});
	
	
	
	
/*		document.frm.action = "../link/setNew";
		document.frm.submit();*/
	
	} else {
		alert("필수 입력 사항합니다");
	}
	
})

/*비어 있는지 검사*/
function checkEmpty (put){
	let result = true;
	for(r of put){
		if(r.value.trim() == ""){
			result = false;
			break;
		}
	}
	return result;
}

/*비밀번호 두개의 값 확인*/
function checkEqual (check1, check2){
	return check1.value == check2.value;
}

/*글자수 검사*/
function checkLength() {
	let a1 = id.value.trim().length;
	let a2 = pw[0].value.trim().length;
	
	if(a1>5&a2>7){
		return true;
	}else {
		return false;
	}
}




 idCheck.addEventListener('click', function(){
	var jsonObj = {
		ID : $("#id").val(),
	};
	
	$.ajax({
	    url:'../link/idCheck' // 요청 할 주소
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
			
			if(data.responseText == "1"){
				alert("아이디가 이미 존재합니다.");
				dupId = true;
			}
			else{
				alert("사용가능한 아이디입니다.");
				dupId = false;
			}
	}// 요청의 실패, 성공과 상관 없이 완료 될 경우 호출
	});
});
 
/*id.addEventListener('change', function(){
	alert('change');
	
});*/
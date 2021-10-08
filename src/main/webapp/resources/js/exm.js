 const frm = document.getElementById('frm');
 const id = document.getElementById('id');
 const idResult = document.getElementById('idResult');
 const idCheck = document.getElementById('idCheck');
 const pw = document.getElementsByClassName('pw');
 const put = document.getElementsByClassName("put");
 const btn = document.getElementById('btn');

btn.addEventListener('click', function(){
	let s1 = checkEmpty(put);
	let s2 = checkEqual(pw[0], pw[1]);
	let s3 = checkLength();
	
	if (s1$$s2$$s3){
			frm.submit();
	} else {
		alert("필수 입력 사항합니다")
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
	open("./idCheck?id="+id.value, "", "width=400, height=200, top=200, left=300");
});
 
id.addEventListener('change', function(){
	alert('change');
	
});
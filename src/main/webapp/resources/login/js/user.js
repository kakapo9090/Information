/**
 * 
 */
 $("#btnu").click(function(){
	let result = true;
	let t;
	$(".put").each(function(s1, s2){
		if($(s2).val() == ""){
			result = false;
			t = s2;
		}
	});
	if(result){
		$("#form1").submit();
		}else {
			alert('필수 입력');	
			$(t).focus();
		}
});
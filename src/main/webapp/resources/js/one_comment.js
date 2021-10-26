/**
 * 1:1 문의 답변 댓글
 */
 

 

let one_comment ='<div ><label>문의 답변</label><br><textarea rows="10" style="width: 900px;" id="oneco_contents" name="oneco_contents"></textarea><br>';
one_comment = one_comment +'<button class="btn btn-info" type="button" id="submit">등록하기</button><button class="btn btn-info" type="button" id="cancel">취소하기</button></div>';
 
 let count = 0;
 //답변하기 버튼을 클릭하면 답변 폼 생성, 답변하기 버튼 안보이게 하기 - 답변은 하나만 등록가능
 $('.one_cobtn').click(function(){
	if(count<1){
		count++;
		$('.one_comment').append(one_comment);
		$('.one_cobtn').attr('style', 'display:none');
	}else{
		alert('문의 답변은 한개만 등록가능합니다.');
	}
		
});



//취소 버튼 눌렀을 때 답변 쓰기 삭제 후 답변하기 버튼 생성

$('.one_comment').on('click', '#cancel', function(){
	$(this).parent().remove();
	count--;
	$('.one_cobtn').attr('style', 'display: block');
});

function delcount(){
	count--;
}
/**
 * fileUpload - notice
 */
 
  
 let file = '<div class="input-group mb-3">';
 file = file +'<input type="file" name="files" class="form-control" id="inputGroupFile02">';
 file = file + '<button class="delete btn btn-light " type="button">X</button>';
 file = file + '</div>';
 
 let count = 0;
 $('#fileup').click(function(){
	if(count<3){
		count++;
		$('#file').append(file);
	}else{
		alert('3개까지만 가능합니다.')
	}
	
});

$('#file').on('click', '.delete', function(){
	$(this).parent().remove()
	count--;
})

function upCount(){
	count--;
}
function setCount(c){
	count = c;
}
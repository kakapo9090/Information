/**
 * 
 */
 
$(document).on("click", ".star", function(){
	$(this).parent().children("span").removeClass("on");
	$(this).addClass("on").prevAll("span").addClass("on");
	let star = $(this).html();
	console.log(star);
	$("#re_star").val(star);
})
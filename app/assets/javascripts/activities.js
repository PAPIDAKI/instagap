
$(document).ready(function(){
		// $('form').hide();
	// var $ht=$('.fieldset').text();
	$('h4').css("border","3px solid green");
	$('label').css("border","3px solid blue");
	$('.form-control').css("border","2px solid red");
	// $('.remove_fields').hide();
	// $('#name').hide();
 	$('form').on('click', '.remove_fields', function(event) {

    $(this).prev('input[type=hidden]').val('1');
	 $(this).closest('.fieldset').hide();
  	return event.preventDefault();
});
});
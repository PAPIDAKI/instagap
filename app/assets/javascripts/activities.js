// playing with jquery
$(document).ready(function(){
		// $('form').hide();
	// var $ht=$('.fieldset').text();
	// $('h4').css("border","3px solid green");
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


// add the 'add solution'
$(document).ready(function(){
 	$('form').on('click', '.add_fields', function(event) {
  var regexp, time;
  time = new Date().getTime();
  regexp = new RegExp($(this).data('id'), 'g');
  $(this).before($(this).data('fields').replace(regexp, time));
   // return event.preventDefault()
});
 });



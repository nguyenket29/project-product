/**
 * 
 */
$(document).ready(function() {
	$(".cart_quantity_up").on("click", function(e) {
		e.preventDefault();
		newQuantity = parseInt($("#quantity").val()) - 1;
		if (newQuantity > 0) {
			$("#quantity").val(newQuantity);
		}
	});

	$(".cart_quantity_down").on("click", function(e) {
		e.preventDefault();
		newQuantity = parseInt($("#quantity").val()) + 1;
		if (newQuantity < 10) {
			$("#quantity").val(newQuantity);
		}
	});
});
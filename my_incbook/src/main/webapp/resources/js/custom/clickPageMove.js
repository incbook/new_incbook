$(function() {
	$(".backPage").on("click", function() {
		history.go(-1);
	});
	$(".mainPage").on("click", function() {
		location.href = "/";
	});
});
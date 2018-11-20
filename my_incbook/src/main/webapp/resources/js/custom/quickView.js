$(function() {
	
	var id = null;
	var quickPrePage = null;
	var keyword = null;
	var quickPage = null;
	$("[quickId]").mouseenter(function() {
		id = $(this).attr("quickId");
		quickPrePage = $(this).attr("quickPrePage");
		page = $(this).attr("page");
		keyword = $(this).attr("keyword");
		ajaxPasswordCheck(id);
	});
	$("[quickPersonalId]").mouseenter(function() {
		id = $(this).attr("quickPersonalId");
		quickPrePage = $(this).attr("quickPrePage");
		page = $(this).attr("page");
		keyword = $(this).attr("keyword");
		ajaxPasswordCheckPersonal(id);
	});
	function ajaxPasswordCheck() {
			$.ajax({
				url: "/book/quickView",
				data: {
					"id" : id,
					"quickPrePage" : quickPrePage,
					"page" : page,
					"keyword" : keyword
				},
				type: 'GET',
				success: resultPaging
			});
	}
	
	function ajaxPasswordCheckPersonal() {
		 $.ajax({
			 url: "/book/quickViewPersonal",
			 data: {
				 "id" : id,
				 "quickPrePage" : quickPrePage
			 },
			 type: 'GET',
			 success: resultPaging
		 });
	 }
	
	function resultPaging(msg) {
		$("#quickview-wrapper").html(msg);
	}
	}); 

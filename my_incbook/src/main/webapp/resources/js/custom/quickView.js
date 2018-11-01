	 $(function() {
		$("[quickId]").mouseenter(function() {
			var id = $(this).attr("quickId");
			
			ajaxPasswordCheck(id);
		});
	 function ajaxPasswordCheck(id) {
			$.ajax({
				url: "/book/quickView",
				data: {
					"id" : id
				},
				type: 'GET',
				success: resultPaging
			});
	}
	function resultPaging(msg) {
		$("#quickview-wrapper").html(msg);
	}
	}); 

$(function() {
		$.ajax({
			url: "/book/chartCategories",
			data: {
				
			},
			type: 'GET',
			success: resultPaging
		});
	});
	/**
	 * ajax로 아이디 중복확인 후 가능한 아이디인지 판별된 정보를 화면에 띄움
	 */
	function resultPaging(msg) {
		$(".categorySide").html(msg); // append로 리스트 뒷부분에 새로운 리스트 추가
}
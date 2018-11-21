<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="shop__sidebar">
	<h3 class="wedget__title">게시판 목록</h3>
	<div class="" style="background-color: white; line-height: 30px">
		<ul>

			<c:forEach items="${boardList}" var="boardList">

				<tr>
					<td><a
						href='/bookclub/noticeSearchList?${pageMaker.makeQuery(pageMaker.cri.page)}&boardId=${boardList.id}&bookclubId=${bookclubId}'><span
							class="ds-fb" boardId="${boardList.id}"
							boardTitle="${boardList.title}">${boardList.title}</span> </a></td>
				</tr>
				<br>
			</c:forEach>
		</ul>
	</div>
</div>


<script>
	var ds_fb = $(".ds-fb");

	/*폼에 빈칸이 있는지 확인*/
	if ('${boardId}' == 0) {
		selectedBoardChangeStyle(ds_fb.eq(0));
	} else {
		for (var i = 0; i < ds_fb.length; i++) {
			if (ds_fb.eq(i).attr("boardId") == '${boardId}') {
				selectedBoardChangeStyle(ds_fb.eq(i));

				/* var i = ds_fb.eq(i).attr("boardTitle");
				alert(i);
				$.ajax({
					url : "/bookclub/noticeSearchList",
					type : 'GET',
					data : {
						"abcd" : "123",
						"qqq" : "aaa"
					},
					success : alert("완료!")
				}); */
			}
		}

	}
	function selectedBoardChangeStyle(selectedBoard) {
		selectedBoard.css('font-weigh', 'bold');
		selectedBoard.css('font-size', '20px');
		selectedBoard.css('color', '#e59285');
		selectedBoard.attr("boardTitleCheck", "true");
	}
	$(function() {
		$("#boardTitle").html($("[boardTitleCheck=true]").attr("boardTitle"));
	});
</script>

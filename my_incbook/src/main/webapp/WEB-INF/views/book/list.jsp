<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<%@ page session ="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
$(document).ready(function() {
	$('#searchBtn').on(
		"click",
		function(){
			self.location = "list"
				+ '${pageMaker.makeQuery(1)}'
				+ "&searchType="
				+ $("select option:selected").val()
				+ "&keyword=" + encodeURIComponent($('#keywordInput').val());	
		});
	
	$('#newBtn').on("click", function(evt) {
		self.location = "create";
	});
	
});
</script>
<title>INCBOOK</title>
    </head>
  
<body>

	<div class='box-body'>
	
	<select name="searchType">
			<option value="null"
				<c:out value="${cri.searchType == null?'selected':''}"/>>
				---</option>
			<option value="tigewrpuco"
				<c:out value="${cri.searchType eq 'tigewrpuco'?'selected':''}"/>>
				All</option>
			<option value="title"
				<c:out value="${cri.searchType eq 'title'?'selected':''}"/>>
				title</option>
			<option value="genre"
				<c:out value="${cri.searchType eq 'genre'?'selected':''}"/>>
				genre</option>
			<option value="writer"
				<c:out value="${cri.searchType eq 'writer'?'selected':''}"/>>
				writer</option>
			<option value="publisher"
				<c:out value="${cri.searchType eq 'publisher'?'selected':''}"/>>
				publisher</option>
			<option value="content"
				<c:out value="${cri.searchType eq 'content'?'selected':''}"/>>
				content</option>

		</select>
	<input type="text" name='keyword' id="keywordInput" value='${cri.keyword}'>
	   <button id='searchBtn'>Search</button>
	   <button id='newBtn'>New Board</button>
	</div>


	<table class="table table-boardered">
		<tr> 
			<th>제목</th>
			<th>장르</th>
			<th>저자</th>
			<th>출판사</th>
			<th>평점</th>
			<th>등록일</th>
			<th>최종수정일</th>
			<th>최종수정자</th>
			<th>줄거리</th>
			<th>이미지</th>
		</tr>
		
		<c:forEach items="${list}" var="BookVO" >
		<tr>
            <td><a href='/book/readPage${pageMaker.makeSearch(pageMaker.cri.page)}&id=${BookVO.id}'>${BookVO.title}</a></td>
            <td>${BookVO.genre}</td>
            <td>${BookVO.writer}</td>
            <td>${BookVO.publisher}</td>
            <td>${BookVO.averageScore}</td>
            <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${BookVO.regdate}" /></td>
            <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${BookVO.updateDate}" /></td>
            <td>${BookVO.finalUpdateMemberId}</td>
            <td>${BookVO.content}</td>
            <td>${BookVO.image}</td>
		</tr>
		
		</c:forEach>
	</table>
	<div class="text-center">
		<ul class="pagination">
			<c:if test="${pageMaker.prev}">
				<li><a href="list${pageMaker.makeSearch(pageMaker.startPage - 1)}">&laquo;</a></li>
			</c:if>

			<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}"
				var="idx">
				<li <c:out value="${pageMaker.cri.page == idx?'class=active':''}"/>>
					<a href="list${pageMaker.makeSearch(idx)}">${idx}</a>
				</li>
			</c:forEach>

			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				<li><a href="list${pageMaker.makeSearch(pageMaker.endPage + 1)}">&raquo;</a></li>
			</c:if>

		</ul>
	</div>

</body>
</html>
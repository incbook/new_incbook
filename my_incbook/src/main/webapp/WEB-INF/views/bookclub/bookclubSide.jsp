<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


	<div class="shop__sidebar">
		<h3 class="wedget__title">게시판 목록</h3>
		<div class="" style="background-color: white;">
			<ul>

				<c:forEach items="${boardList}" var="boardList">

					<tr>
						<td><a
							href='/bookclub/noticeList?${pageMaker.makeQuery(pageMaker.cri.page)}&boardId=${boardList.id}&bookclubId=${bookclubId}'>${boardList.title}
						</a></td>
					</tr>
					<br>
				</c:forEach>
			</ul>
		</div>
	</div>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.incbook.project.domain.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="../include/header.jsp"%>

<!-- Start Bradcaump area -->
<div class="ht__bradcaump__area bg-image--4">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="bradcaump__inner text-center">
					<h2 class="bradcaump-title">게시판</h2>
					<nav class="bradcaump-content">
						<a class="breadcrumb_item" href="index.html">Home</a> <span
							class="brd-separetor">/</span> <span
							class="breadcrumb_item active">게시판</span>
					</nav>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End Bradcaump area -->
<div class="board_name">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h3>공지사항</h3>
			</div>
		</div>
	</div>
</div>
<section class="wn__product__area brown--color pb--30 board_pd">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<table class="table table-striped">
					<thead>
						<tr>
							<th scope="col" style="text-align:center">번호</th>
							<th scope="col" style="text-align:center">제목</th>
							<th scope="col" style="text-align:center">작성자</th>
							<th scope="col" style="text-align:center">날짜</th>
							<th scope="col" style="text-align:center">조회수</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${announcementList}" var="AnnouncementVO">

							<tr>
								<td>${AnnouncementVO.id}</td>
								<td><a
									href='/announcement/readAnnouncement${boardPageMaker.makeQuery(boardPageMaker.cri.page)}&id=${AnnouncementVO.id}'>${AnnouncementVO.title}
								</a></td>
								<td>${AnnouncementVO.memberId}</td>
								<td><fmt:formatDate pattern="YYYY-MM-dd HH:mm"
										value="${AnnouncementVO.regdate}" /></td>
								<td>${AnnouncementVO.viewCount}</td>
							</tr>

						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="text-center">
		<ul class="wn__pagination">
			<c:if test="${boardPageMaker.prev}">
				<li><a
					href="announcement${boardPageMaker.makeSearch(boardPageMaker.startPage - 1)}">&laquo;</a></li>
			</c:if>

			<c:forEach begin="${boardPageMaker.startPage}"
				end="${boardPageMaker.endPage}" var="idx">
				<li
					<c:out value="${boardPageMaker.cri.page == idx?'class=active':''}"/>>
					<a href="announcement${boardPageMaker.makeSearch(idx)}">${idx}</a>
				</li>
			</c:forEach>

			<c:if test="${boardPageMaker.next && boardPageMaker.endPage > 0}">
				<li><a
					href="announcement${boardPageMaker.makeSearch(boardPageMaker.endPage + 1)}">&raquo;</a></li>
			</c:if>

		</ul>
	</div>
	
	
	<div class="form_all al_center">
		<div class="form__btn button_form">
			<button type="submit" id="btn_insert" class="radius">공지사항 작성</button>
		</div>
	</div>
	
	
	<form role="form" action="modifyPage" method="post">
	<input type="hidden" name="page" value="${boardCri.page}">
	<input type="hidden" name="pagesize" value="${boardCri.pagesize}">
	</form>
</section>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<%@include file="../include/footer.jsp"%>
<script>
	//<![CDATA[
	$(document).ready(function() {
		var formObj = $("form[role='form']");
		console.log(formObj);

		$("#btn_insert").on("click", function() {
			formObj.attr("method", "get");
			formObj.attr("action", "/announcement/announcementInsert");
			formObj.submit();
		});
	});
	//]]>
</script>
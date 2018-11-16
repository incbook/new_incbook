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
					<h2 class="bradcaump-title">게시판 샘플</h2>
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
				<h3>북클럽 목록</h3>
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
							<th scope="col">번호</th>
							<th scope="col">장르</th>
							<th scope="col">이름</th>
							<th scope="col">생성날짜</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${bookclubList}" var="BookclubVO">

							<tr>
								<td>${BookclubVO.id}</td>
								<td>${BookclubVO.genre}</td>
<td><a href='/bookclub/boardList${pageMaker.makeQuery(pageMaker.cri.page)}&bookclubId=${BookclubVO.id}'>${BookclubVO.name} </a></td>					
								<td><fmt:formatDate pattern="YYYY-MM-dd HH:mm"
									value="${BookclubVO.regdate}" /></td>
							</tr>

						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="text-center">
		<ul class="wn__pagination">
			<c:if test="${pageMaker.prev}">
				<li><a href="bookclubList${pageMaker.makeSearch(pageMaker.startPage - 1)}">&laquo;</a></li>
			</c:if>

			<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}"
				var="idx">
				<li <c:out value="${pageMaker.cri.page == idx?'class=active':''}"/>>
					<a href="bookclubList${pageMaker.makeSearch(idx)}">${idx}</a>
				</li>
			</c:forEach>

			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				<li><a href="bookclubList${pageMaker.makeSearch(pageMaker.endPage + 1)}">&raquo;</a></li>
			</c:if>

		</ul>
	</div>
	<div class="button_form">
		<button type="submit" id="btn_insert">북클럽 생성</button>
	
	<div class="form_all al_center">
		<div class="form__btn">
			<button type="submit" id="btn_insert" class="radius">북클럽 생성</button>
		</div>
	</div>
	

	<form role="form" action="modifyPage" method="post">
	<input type="hidden" name="page" value="${cri.page}">
	<input type="hidden" name="pagesize" value="${cri.pagesize}">
	</form>
</section>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

<%@include file="../include/footer.jsp"%>
<script>
	//<![CDATA[
	$(document).ready(function() {
		var formObj = $("form[role='form']");
		console.log(formObj);

		$("#btn_insert").on("click", function() {
			formObj.attr("method", "get");
			formObj.attr("action", "/bookclub/bookclubInsert");
			formObj.submit();
		});
	});
	//]]>
</script>
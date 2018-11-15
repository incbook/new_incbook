<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.incbook.project.domain.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../include/header.jsp"%>
<div class="ht__bradcaump__area bg-image--4">
	<div class="container">
		<div class="row">
			<div class="col-lg-9">
				<div class="bradcaump__inner text-center">
					<h2 class="bradcaump-title">게시판 샘플!!!!</h2>
					<nav class="bradcaump-content">
						<a class="breadcrumb_item" href="index.html">Home</a> <span
							class="brd-separetor">/</span> <span
							class="breadcrumb_item active">게시판 샘플</span>
					</nav>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="board_name">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h3>북클럽 게시판</h3>
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
							<th scope="col">제목</th>

						</tr>
					</thead>
					<tbody>
						<c:forEach items="${boardList}" var="boardList">

							<tr>
								<td>${boardList.id}</td>
								<td><a href='/bookclub/noticeList?${pageMaker.makeQuery(pageMaker.cri.page)}&boardId=${boardList.id}&bookclubId=${bookclubId}'>${boardList.title} </a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="button_form">
		<button type="button" id="btn_goList">북클럽 목록</button>
		<button type="button" id="btn_modify">북클럽 수정</button>
		<button type="button" id="btn_delete">북클럽 삭제</button>
		<button type="button" id="btn_insert">게시판 생성</button>

	</div>
	<form role="form" method="post">
		<input type='hidden' name='bookclubId' value="${bookclubId}"> 
		<input type='hidden' name='page' value="${cri.page}"> 
		<input type='hidden' name='pagesize' value="${cri.pagesize}">

	</form>
</section>
<%@include file="../include/footer.jsp"%>

<script>
	//<![CDATA[
	$(document).ready(function() {
		var formObj = $("form[role='form']");
		console.log(formObj);

		$("#btn_goList").on("click", function() {
			formObj.attr("method", "get");
			formObj.attr("action", "/bookclub/bookclubList");
			formObj.submit();
		});
		$("#btn_modify").on("click", function() {
			formObj.attr("action", "/bookclub/bookclubModifyPage");
			formObj.attr("method", "get");
			formObj.submit();
		});
		$("#btn_delete").on("click", function() {
			formObj.attr("action", "/bookclub/deleteBookclub");
			formObj.attr("method", "get");
			formObj.submit();
		});

		$("#btn_insert").on("click", function() {
			formObj.attr("method", "get");
			formObj.attr("action", "/bookclub/boardInsert");
			formObj.submit();
		});
	});
	//]]>
</script>
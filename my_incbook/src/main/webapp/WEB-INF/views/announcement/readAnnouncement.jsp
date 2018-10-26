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
							<th scope="col">번호</th>
							<th scope="col">제목</th>
							<th scope="col">작성자</th>
							<th scope="col">내용</th>
							<th scope="col">날짜</th>
							<th scope="col">조회수</th>

						</tr>
					</thead>
					<tbody>


						<tr>
							<td>${readAnnouncement.id}</td>
							<td>${readAnnouncement.title}</td>
							<td>${readAnnouncement.memberId}</td>
							<td>${readAnnouncement.content}</td>
							<td><fmt:formatDate pattern="YYYY-MM-dd HH:mm"
									value="${readAnnouncement.regdate}" /></td>
							<td>${readAnnouncement.viewCount}</td>
						</tr>

					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div>
		<button type="submit" id="btn_goList">목록</button>
	</div>
	<form role="form" action="modifyPage" method="post">
	<input type='hidden' name='page' value ="${cri.page}">
	<input type='hidden' name='pagesize' value ="${cri.pagesize}">
	
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
			formObj.attr("action", "/announcement/announcement");
			formObj.submit();
		});
	});
	//]]>
</script>
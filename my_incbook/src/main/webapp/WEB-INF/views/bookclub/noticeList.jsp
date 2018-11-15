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

<section class="my_account_area pt--80 pb--55 bg--white">
	<div class="container">
		<div class="row">

			<div
				class="col-lg-2 col-12 order-2 order-lg-1 md-mt-40 sm-mt-40 bookclubSide">

			</div>


			<!-- End Bradcaump area -->
			<div class="col-lg-10 col-12 order-1 order-lg-2">
				<div class="my__account__wrapper">
					<div class="cus_title">
						<p>
							<strong>게시글 목록</strong>
						</p>
					</div>
					<!-- <div class="board_name">
	<div class="container">
		<div class="row">
			<div class="col-lg-9">
				<h3>게시판 게시글</h3>
			</div>
		</div>
	</div>
</div> -->



					<section class="wn__product__area brown--color pb--30 board_pd">
						<div class="container">
							<div class="row">
								<div class="col-lg-12 col-12 order-1 order-lg-2">
									<table class="table table-striped tablecenter">
										<thead>
											<tr>
												<th scope="col">번호</th>
												<th scope="col">제목</th>
												<th scope="col">글쓴이</th>
												<th scope="col">날짜</th>
												<th scope="col">조회수</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${noticeList}" var="NoticeVO">

												<tr>
													<td>${NoticeVO.id}</td>
													<td><a
														href='/bookclub/readNotice?${pageMaker.makeQuery(pageMaker.cri.page)}&bookclubId=${bookclubId}&boardId=${boardId}&noticeId=${NoticeVO.id}'>${NoticeVO.title}
													</a></td>
													<td>${NoticeVO.memberId}</td>
													<td><fmt:formatDate pattern="YYYY-MM-dd HH:mm"
															value="${NoticeVO.regdate}" /></td>
													<td>${NoticeVO.viewCount}</td>
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
									<li><a
										href="bookclub${pageMaker.makeSearch(pageMaker.startPage - 1)}">&laquo;</a></li>
								</c:if>

								<c:forEach begin="${pageMaker.startPage}"
									end="${pageMaker.endPage}" var="idx">
									<li
										<c:out value="${pageMaker.cri.page == idx?'class=active':''}"/>>
										<a href="bookclub${pageMaker.makeSearch(idx)}">${idx}</a>
									</li>
								</c:forEach>

								<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
									<li><a
										href="bookclub${pageMaker.makeSearch(pageMaker.endPage + 1)}">&raquo;</a></li>
								</c:if>

							</ul>
						</div>
						<div class="button_form">
							<button type="button" id="btn_goList">북클럽 목록</button>
							<button type="button" id="btn_bookclubModify">북클럽 수정</button>
							<button type="button" id="btn_bookclubDelete">북클럽 삭제</button>
							<button type="button" id="btn_boardInsert">게시판 생성</button>
							<button type="submit" id="btn_boardModify">게시판 수정</button>
							<button type="submit" id="btn_boardDelete">게시판 삭제</button>
							<button type="submit" id="btn_noticeInsert">게시글 생성</button>



						</div>
						<form role="form" method="post">
							<input type='hidden' name='boardId' value="${boardId}"> <input
								type='hidden' id='bookclubId' name='bookclubId'
								value="${bookclubId}"> <input type="hidden" name="page"
								value="${cri.page}"> <input type="hidden"
								name="pagesize" value="${cri.pagesize}">
						</form>
					</section>
				</div>
			</div>
		</div>
</section>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

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
		$("#btn_bookclubModify").on("click", function() {
			formObj.attr("action", "/bookclub/bookclubModifyPage");
			formObj.attr("method", "get");
			formObj.submit();
		});
		$("#btn_bookclubDelete").on("click", function() {
			formObj.attr("action", "/bookclub/deleteBookclub");
			formObj.attr("method", "get");
			formObj.submit();
		});
		$("#btn_boardInsert").on("click", function() {
			formObj.attr("method", "get");
			formObj.attr("action", "/bookclub/boardInsert");
			formObj.submit();
		});
		$("#btn_boardModify").on("click", function() {
			formObj.attr("action", "/bookclub/boardModifyPage");
			formObj.attr("method", "get");
			formObj.submit();
		});
		$("#btn_boardDelete").on("click", function() {
			formObj.attr("action", "/bookclub/deleteBoard");
			formObj.attr("method", "get");
			formObj.submit();
		});

		$("#btn_noticeInsert").on("click", function() {
			formObj.attr("method", "get");
			formObj.attr("action", "/bookclub/noticeInsert");
			formObj.submit();
		});

		var bookclubId = $("#bookclubId").val();
		$.ajax({
			url : "/bookclub/bookclubSide",
			data : {
				"bookclubId" : bookclubId
			},
			type : 'GET',
			success : resultPaging
		});
		bookclubSide
		function resultPaging(msg) {
			$(".bookclubSide").html(msg); // append로 리스트 뒷부분에 새로운 리스트 추가
		}
	});
	//]]>
</script>
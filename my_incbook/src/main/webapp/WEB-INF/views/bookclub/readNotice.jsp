<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../include/header.jsp"%>


<section class="my_account_area pt--80 pb--55 bg--white">
	<div class="container">
		<div class="row">
			<div class="col-lg-12"></div>
			<div class="col-lg-12 col-12">
				<div class="my__account__wrapper">
					<h3 class="account__title">게시글 읽기</h3>



					<form role="form" action="/bookclub/readNotice" method="post">
						<div class="account__form">
							<input type="hidden" name="noticeId" value="${readNotice.id}" /> <input
								type="hidden" name="bookclubId" value="${bookclubId}" /> <input
								type="hidden" name="boardId" value="${boardId}" />


							<div class="input__box">
								<label for="title">제목<span>*</span></label> <input type="text"
									id="title" name="title" value="${readNotice.title}">
							</div>
							<div class="input__box">
								<label for="title">글쓴이<span>*</span></label> <input
									type="hidden" id="memberId" name="memberId"
									value="${readNotice.memberId}">
							</div>
							<div class="input__box">
								<label for="title">날짜<span>*</span></label>
								<fmt:formatDate pattern="YYYY-MM-dd HH:mm"
									value="${readNotice.regdate}" />
							</div>
							<div class="input__box">
								<label for="title">내용<span>*</span></label> <input type="text"
									id="content" name="content" value="${readNotice.content}">
							</div>
							<div class="input__box">
								<label for="title">조회수<span>*</span></label> <input type="text"
									id="viewCount" name="viewCount" value="${readNotice.viewCount}">
							</div>

							<div>
								<button type="button" id="btn_goBoardList">게시판 목록</button>
								<button type="button" id="btn_noticeModifyPage">게시글 수정</button>
								<button type="button" id="btn_deleteNotice">게시글 삭제</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>


<%@include file="../include/footer.jsp"%>
<script>
	$(document).ready(function() {
		var formObj = $("form[role='form']");
		console.log(formObj);

		$("#btn_goBoardList").on("click", function() {
			formObj.attr("method", "get");
			formObj.attr("action", "/bookclub/noticeList");
			formObj.submit();
		});
		$("#btn_noticeModifyPage").on("click", function() {
			formObj.attr("action", "/bookclub/noticeModifyPage");
			formObj.attr("method", "get");
			formObj.submit();
		});
		$("#btn_deleteNotice").on("click", function() {
			formObj.attr("action", "/bookclub/deleteNotice");
			formObj.attr("method", "get");
			formObj.submit();
		});
	});
</script>
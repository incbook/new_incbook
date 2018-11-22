<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../include/header.jsp"%>


<section class="my_account_area pt--80 pb--55 bg--white">
	<div class="container">
		<div class="row">
			<div class="col-lg-1"></div>
			<div class="col-lg-10 col-12">
				<div class="my__account__wrapper">
					<h3 class="account__title" align="center" style="border-bottom: 1px dotted #ddd; padding-bottom: 6px;">${bookclubNameOfReadNotice.name}</h3>


					<form role="form" action="/bookclub/readNotice" method="post">
						<div class="account__form">
							<input type="hidden" name="noticeId" value="${readNotice.id}" />
							<input type="hidden" name="bookclubId" value="${bookclubId}" />
							<input type="hidden" name="boardId" value="${boardId}" />

							<div class="input__box sign__up__form">
								<label for="title" style="float: left; width: 80%; font-size: 13px;"><span>${readNotice.title}</span>&ensp;|&ensp;${boardTitleOfReadNotice.title}</label> 
								<p style="float: right; width: 20%; text-align: right;"><fmt:formatDate pattern="YYYY-MM-dd HH:mm" value="${readNotice.regdate}" /></p>
								<%-- <input type="text" id="title" class="font_size_up" name="title" value="${readNotice.title}" readonly> --%>
							</div>
							
							
							<%-- <div class="input__box sign__up__form">
								<p style="border: 1px solid red; float: right; width: 33%;"><fmt:formatDate pattern="YYYY-MM-dd HH:mm" value="${readNotice.regdate}" /></p>
							</div> --%>
							
							<div class="clearfix"></div>
							<div class="input__box sign__up__form">
								<label for="title" style="border-top: 1px dashed; #ddd; padding: 10px 0; font-size: 13px;">글쓴이&ensp;:&ensp;<span>${readNotice.member.nickname}</span></label>
							</div>
							
							<div class="input__box" style="width: 100%; height: 300px; padding: 10px; border-radius:10px; border: 1px solid #ddd;">${readNotice.content}
								<%-- <label for="title">내용<span>*</span></label> <input type="text"
									id="content" name="content" value="${readNotice.content}"
									readonly> --%>
							</div>
							
							<div class="input__box">
								<label for="title" style="font-size: 13px; padding: 10px 0; border-bottom: 1px dashed; #ddd;">조회수&ensp;|&ensp;<span>${readNotice.viewCount}</span></label>
							</div>


							<div class="form__btn button_form custom__center">
								<button type="button" id="btn_goBoardList" class="radius">게시판
									목록</button>
								<button type="button" id="btn_noticeModifyPage" class="radius">게시글
									수정</button>
								<button type="button" id="btn_deleteNotice" class="radius">게시글
									삭제</button>
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
			formObj.attr("action", "/bookclub/noticeSearchList");
			formObj.submit();
		});
		$("#btn_noticeModifyPage").on("click", function() {
			formObj.attr("action", "/bookclub/noticeModifyPage");
			formObj.attr("method", "get");
			formObj.submit();
		});
		$("#btn_deleteNotice").on("click", function() {
			var con = confirm("정말로 삭제 하시겠습니까?");
			if (con) {
				formObj.attr("action", "/bookclub/deleteNotice");
				formObj.attr("method", "get");
				formObj.submit();
			} else {

			}
		});
	});
</script>
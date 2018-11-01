<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.incbook.project.domain.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="../include/header.jsp"%>

<form role="form" action="modifyPage" method="post">

	<input type='hidden' name='id' value="${modifyTarget.id}"> 
	<input type='hidden' name='page' value="${cri.page}"> 
	<input type='hidden' name='pagesize' value="${cri.pagesize}">

	<section class="my_account_area pt--80 pb--55 bg--white">
		<div class="container">
			<div class="row">
				<div class="col-lg-12"></div>
				<div class="col-lg-12 col-12">
					<div class="my__account__wrapper">
						<h3 class="account__title">도서 상세정보 수정</h3>

						<div class="account__form" style="border-color: red">
							<div class="input__box">
								<label for="title">제목 <span>*</span></label> <input type="text"
									name="title" value="${modifyTarget.title}">
							</div>

							<div class="input__box">
								<label for="genre">장르 <span>*</span></label> <input type="text"
									name="genre" value="${modifyTarget.genre}">
							</div>
							<div class="input__box">
								<label for="writer">저자 <span>*</span></label> <input type="text"
									name="writer" value="${modifyTarget.writer}">
							</div>

							<div class="input__box">
								<label for="publisher">출판사 <span>*</span></label> <input
									type="text" name="publisher" value="${modifyTarget.publisher}">
							</div>

							<div class="input__box">
								<label for="content">줄거리 <span>*</span></label>
								<textarea name="content" rows="3">${modifyTarget.content}</textarea>
							</div>

							<div class="input__box">
								<label for="image">이미지 <span>*</span></label> <input type="text"
									name="image" value="${modifyTarget.content}">
							</div>

							<div class="input__box">
								<label for="content">최종수정자 <span>*</span></label> <input
									type="text" name="finalUpdateMemberId"
									value="${modifyTarget.finalUpdateMemberId}" readonly="readonly">
							</div>
							<button type="button" id="save">저장</button>
							<button type="button" id="cancle">취소</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

</form>




<%@include file="../include/footer.jsp"%>

<script type="text/javascript">
	$(document)
			.ready(
					function() {
						var formObj = $("form[role='form']");
						console.log(formObj);
						$("#save").on("click", function() {
							formObj.submit();
						});

						$("#cancle")
								.on(
										"click",
										function() {
											self.location = "/book/readPage?page=${cri.page}&pagesize=${cri.pagesize}&id=${modifyTarget.id}";
										});
					});
</script>
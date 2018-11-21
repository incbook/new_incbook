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
					<h3 class="account__title" align="center" style="border-bottom: 1px dotted #ddd; padding-bottom: 6px;">게시글 생성</h3>
					<form role="form" method="post">
						<input type='hidden' name='boardId' value="${boardId}"> 
						<input type='hidden' name='bookclubId' value="${bookclubId}"><input
							type='hidden' name='page' value="${cri.page}"> <input
							type='hidden' name='pagesize' value="${cri.pagesize}">

					</form>
					<form role="form" method="post">
						<div class="account__form">
							<div class="input__box">
								<label for="title"  class="font_size_up">제　목 <span></span></label> <input type="text"
									placeholder="제목을 입력하세요." id="title" name="title">
							</div>
							<input type="hidden" id="memberId" name="memberId" value="${login.id}"	>
							<%-- <div class="input__box">
								<label for="title"  class="font_size_up">글쓴이 <span>*</span></label> <input type="hidden"
									id="memberId" name="memberId" value="${login.id}"
									>
									<input type="text"
									id="nickname" value="${login.nickname}"
									readonly>
							</div> --%>

							<div class="input__box">
								<label for="title"  class="font_size_up">내　용 <span></span></label> 
								<textarea rows="20" cols="200" id="content" name="content" placeholder="내용을 입력하세요."></textarea>
							</div>



							<div class="form__btn button_form custom__center">
								<button type="submit" class="radius">생성</button>
								<button type="button" class="radius"
									onclick="location.href='/bookclub/noticeSearchList?${pageMaker.makeQuery(pageMaker.cri.page)}&boardId=${boardId}&bookclubId=${bookclubId}'">
									취소</button>
							</div>


						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>

<%@include file="../include/footer.jsp"%>
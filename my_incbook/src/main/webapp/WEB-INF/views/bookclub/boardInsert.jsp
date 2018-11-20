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
					<h3 class="account__title">게시판 생성</h3>

					<form role="form" method="post">
						<div class="account__form">
							<div class="input__box">
								<label for="title">제목 <span>*</span></label> <input type="text"
									placeholder="제목을 입력하세요." id="title" name="title">
							</div>



							<div class="form__btn button_form">
								<button type="submit" class="radius">생성</button>
								<button type="button" class="radius"
									onclick="location.href='/bookclub/noticeSearchList?${pageMaker.makeQuery(pageMaker.cri.page)}&bookclubId=${bookclubId}'">
									취소</button>
							</div>
							<form role="form" method="post">
								<input type='hidden' name='bookclubId' value="${bookclubId}"> 
								<input type='hidden' name='page' value="${cri.page}"> 
								<input type='hidden' name='pagesize' value="${cri.pagesize}">

							</form>

						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>

<%@include file="../include/footer.jsp"%>
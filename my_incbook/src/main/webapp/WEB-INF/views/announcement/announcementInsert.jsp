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
					<h3 class="account__title">공지사항 입력</h3>

					<form role="form" method="post">
						<div class="account__form">
							<div class="input__box">
								<label for="title">제목 <span>*</span></label> <input type="text" placeholder="제목을 입력하세요."
									id="title" name="title">
							</div>

							<div class="input__box">
								<label for="content">내용 <span>*</span></label>
								<textarea cols="170" placeholder="  내용을 입력하세요." id="content" name="content"></textarea>

							</div>

							<div class="input__box">
								<label for="memberId">작성자 <span>*</span></label> <input
									type="text"  value="${login.nickname}" readonly
									>
									<input
									type="hidden" id="memberId" name="memberId" value="${login.id}" 
									>
							</div>





							<div class="button_form">
								<button type="submit">등록</button>
								<button type="button"
									onclick="location.href='/announcement/announcement${boardPageMaker.makeQuery(boardPageMaker.cri.page)}'">
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
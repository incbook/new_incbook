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
					<h3 class="account__title">게시글 생성</h3>
					<form role="form" method="post">
						<input type='hidden' name='boardId' value="${boardId}"> 
						<input type='hidden' name='bookclubId' value="${bookclubId}"><input
							type='hidden' name='page' value="${cri.page}"> <input
							type='hidden' name='pagesize' value="${cri.pagesize}">

					</form>
					<form role="form" method="post">
						<div class="account__form">
							<div class="input__box">
								<label for="title">제목 <span>*</span></label> <input type="text"
									placeholder="제목을 입력하세요." id="title" name="title">
							</div>

							<div class="input__box">
								<label for="title">글쓴이 <span>*</span></label> <input type="hidden"
									id="memberId" name="memberId" value="${login.id}"
									>
									<input type="text"
									id="nickname" value="${login.nickname}"
									readonly>
							</div>

							<div class="input__box">
								<label for="title">내용 <span>*</span></label> <input type="text"
									placeholder="내용을 입력하세요." id="content" name="content">
							</div>



							<div class="form__btn">
								<button type="submit">생성</button>
								<button type="button"
									onclick="location.href='/bookclub/noticeList?${pageMaker.makeQuery(pageMaker.cri.page)}&boardId=${boardId}&bookclubId=${bookclubId}'">
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../include/header.jsp"%>

	<section class="my_account_area pt--80 pb--55 bg--white">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
				</div>
				<div class="col-lg-12 col-12">
					<div class="my__account__wrapper">
						<h3 class="account__title">소유도서정보</h3>
						<form action="" method="post" class="validationForm">
							<input type="hidden" name="id" value="${own.id}">
							<div class="account__form">
								<div class="input__box">
									<label for="title">제목 <span>*</span></label> 
									<input type="text" name="title" value="${book.title}" >
								</div>
	
								<div class="input__box">
									<label for="genre">장르 <span>*</span></label> 
									<input type="text" name="genre" value="${book.genre}" >
								</div>
								<div class="input__box">
									<label for="writer">저자 <span>*</span></label> 
									<input type="text" name="writer" value="${book.writer}"	>
								</div>
	
								<div class="input__box">
									<label for="publisher">출판사 <span>*</span></label> 
									<input type="text" name="publisher" value="${book.publisher}">
								</div>
	
								<div class="input__box">
									<label for="content">줄거리 <span>*</span></label>
									<textarea name="content" rows="3" >${book.content} </textarea>
								</div>
	
								<div class="input__box">
									<label for="image">이미지 <span>*</span></label> 
									<input type="text" name="image" value="${book.image}" >
								</div>
	
								<div class="input__box">
									<label for="memberNickname">보유자 <span>*</span></label>
									<input type="text" name="nickname" value="${member.nickname}">
								</div>

								<div class="input__box">
									<label for="state"> 상태 <span>*</span></label>
									<input type="text" name="state" value="${own.state}">
								</div>

								<div class="input__box">
									<label for="fee">일당 대여료<span>*</span></label>
									<input type="text" name="fee" value="${own.fee}원">
								</div>
								
								<div class="input__box">
									<label for="rentLocation">거래 선호 지역<span>*</span></label>
									<input type="text" name="location" value="${own.rentLocation}">
								</div>

								<div class="input__box">
									<label for="">대여 ${own.isRent}<span>*</span></label>
									<label for="">판매 ${own.isSell}<span>*</span></label>
								</div>
							
								<div class="form__btn">
										<button class="trade" type="button">거래</button>
								</div>
							</div>					
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	
<%@include file="../include/footer.jsp"%>
<script src="/resources/js/custom/readOnly.js"></script>
<script>
	$(function() {
		$(".trade").on("click",function() {
			alert("채팅시작");
		});
	});
</script>


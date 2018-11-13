<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../include/header.jsp"%>
	
<div class="maincontent bg--white pt--80 pb--55">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-12">
				<div class="wn__single__product">
					<div class="row">
						<div class="col-lg-6 col-12">
							<div class="wn__fotorama__wrapper">
								<div class="fotorama wn__fotorama__action" data-nav="thumbs">
									<a href="1.jpg"><img
										src="/img/${findBookByID2.id}/${findBookByID2.image}"
										style="width: 450; height: 565;" alt=""></a>
								</div>
							</div>
						</div>
						<div class="col-lg-6 col-12">
							<div class="product__info__main">
								<h3>${book.title}</h3>
								<br> <label for="genre">장르 <span>*&nbsp;</span></label>${book.genre}
								<br> <label for="writer">저자 <span>*&nbsp;</span></label>${book.writer}
								<br> <label for="publisher">출판사 <span>*&nbsp;</span></label>${book.publisher}
								<br> <label for="publisher">보유자 <span>*&nbsp;</span></label>${member.nickname}
								<br> <label for="publisher">상태 <span>*&nbsp;</span></label>${own.state}급
								<br> <label for="publisher">일당 대여료 <span>*&nbsp;</span></label>${own.fee}원
								<br> <label for="publisher">대여기간 <span>*&nbsp;</span></label>${own.selectPeriod}일
								<br> <label for="publisher">거래 선호 지역 <span>*&nbsp;</span></label>${own.rentLocation}
							</div>
							
							<div class="button_form">
								<button class="chat_start" type="button">채팅하기</button>&emsp;
								<button class="trade_start" type="button">거래하기</button>
							</div>
							
						</div>
					</div>
				</div>
				<div class="product__info__detailed mg_bottom80">
					<div class="pro_details_nav nav justify-content-start"
						role="tablist">
						<a class="nav-item nav-link active" data-toggle="tab" href="#nav-details" role="tab">줄거리</a> 
						<!-- <a class="nav-item nav-link" data-toggle="tab" href="#nav-review" role="tab">Reviews</a> -->
					</div>
				<div class="tab__container">
					<!-- Start Single Tab Content -->
					<div class="pro__tab_label tab-pane fade show active"
						id="nav-details" role="tabpanel">
						<div class="description__attribute">
							<p>${book.content}</p>
						</div>
					</div>	
				</div>
			</div>
		</div>
	</div>
</div>
	
	
	
	
<%@include file="../include/footer.jsp"%>
<script src="/resources/js/custom/readOnly.js"></script>
<script>
	$(function() {
		$(".chat_start").on("click",function() {
			alert("채팅시작");
		});
	});
	
	$(function() {
		$(".trade_start").on("click",function() {
			alert("소유자와 채팅은 하셨나요?");
		});
	});
</script>

<%-- <section class="my_account_area pt--80 pb--55 bg--white">
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
</section> --%>
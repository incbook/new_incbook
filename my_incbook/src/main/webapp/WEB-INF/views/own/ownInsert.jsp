<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../include/header.jsp"%>

<c:if test="${not(own.isRent eq '가능' and own.isSell eq '불가능'
			 		or own.isRent eq '불가능' and own.isSell eq '가능' 
			 		or own.isRent eq '가능' and own.isSell eq '가능')}">
	<script>
		alert("정상적인 경로로 접속 해주시기 바랍니다.");
		self.location="/";
	</script>
</c:if>

<section class="my_account_area pt--80 pb--55 bg--white">
	<div class="container">
		<div class="row">
			<div class="col-lg-12"></div>
			<div class="col-lg-12 col-12">
				<div class="my__account__wrapper">
					<c:if test="${own.isRent == '가능' and own.isSell == '불가능'}">
						<h3 class="account__title">대여 도서등록</h3>
					</c:if>
					<c:if test="${own.isRent == '불가능' and  own.isSell == '가능'}">
						<h3 class="account__title">판매 도서등록</h3>
					</c:if>
					<c:if test="${own.isRent == '가능' and own.isSell == '가능'}">
						<h3 class="account__title">대여&판매 도서등록</h3>
					</c:if>
					
					<form action="/own/ownInsert" method="POST" class="validationForm">
						<input type="hidden" name="isRent" value="${own.isRent}">
						<input type="hidden" name="isSell" value="${own.isSell}">
						<input type="hidden" name="memberId" value="${login.id}">
						
						<div class="account__form">
							<div class="input__box">
								<label for="title" class="font_size_up">제목 <span>*</span></label>
								<input style="width:60%"  type="text" id="title" validationText="제목" readonly>
								<input type="hidden" id="book_id" name="bookId" value="">
								
								<span class="form__btn">
									<button class="btn searchBook radius btn_ri" type="button">도서검색</button>
								</span>
							</div>

							<div class="input__box">
								<label for="nickname" class="font_size_up">등록자 <span>*</span></label>
								<input type="text" id="nickname" name="nickname" value="${login.nickname}" readonly>
							</div>

							<div class="input__box">
								<label for="state" class="font_size_up">도서상태 <span>*</span></label>
								<input type="text" id="state" name="state" validationText="도서상태">
							</div>

							<c:if test="${own.isRent eq '가능'}">
								<div class="input__box">
									<label for="fee" class="font_size_up">1일당 대여금액 <span>*</span></label>
									<input type="number" step="50" min="0" id="fee" name="fee" validationText="일당 대여금액">
								</div>

								<div class="input__box">
									<label for="selectPeriod" class="font_size_up">대여기간 <span>*</span></label>
									<input type="number" id="selectPeriod" name="selectPeriod" validationText="대여기간">
								</div>
	
								<div class="input__box">
									<label for="rentAvailable" class="font_size_up">대여 가능기간<span>*</span></label>
									<input type="date" id="rentAvailable" name="date" validationText="대여 가능기간">
								</div>
							</c:if>

							<div class="input__box">
								<label for="rentLocation" class="font_size_up">거래 선호지역<span>*</span></label>
								<input type="text" id="rentLocation" name="rentLocation" validationText="거래 선호지역">
							</div>

							<div class="form__btn al_center">
								<button type="button" class="radius" onclick="location.href='/book/readPage${pageMaker.makeSearch(pageMaker.cri.page)}&id=${BookVO.id}'">
									취소
								</button>
								<button class="validationFormButton radius" type="button">등록</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>

<%@include file="../include/footer.jsp"%>
<script src="/resources/js/custom/form.js"></script>

<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<script type="text/javascript">

$(function(){
    $("#rentAvailable").datepicker({ dateFormat: 'yy-mm-dd'});
    
    $(".searchBook").on("click", function() {
    	book_select();
    });
    $("#title").keydown(function(event) {
	    if (window.event.keyCode == 13) {
	    	book_select()
	    }
    });

    function book_select() {
   		var width = (window.screen.width * 3 / 5);
   		var height = (window.screen.height * 3 / 5);
   		var left = (window.screen.width / 2) - (width / 2);
   		var top =  (window.screen.height / 2) - (height / 2);
   		 
   		window.name = "ownForm";
   		window.open('/own/searchBook?searchType=title&keyword=', 'searchBook', 
   				'width='+width+', height='+height+', menubar=no, status=no, toolbar=no, left='+left+', top='+top);
    }
});


</script>






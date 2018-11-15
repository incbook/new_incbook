<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>

	<section class="my_account_area pt--80 pb--55 bg--white">
		<div class="container">
			<div class="row">
				<%@include file="../include/includeSide.jsp"%>
				
				<div class="col-lg-9 col-12 order-1 order-lg-2">
					<div class="my__account__wrapper">
						<div class="cus_title">
							<p>
								<strong>회원 상세정보</strong>
							</p>
						</div>
						<form action="" method="post" class="validationForm">
							<div class="account__form">
								<div class="input__box sign__up__form">
									<label for="login_id" class="font_size_up">아이디 <span>*</span></label>
									<input style="width:60%" validationText="아이디" type="text" 
											id="login_id" name="loginId" class="doubleCheckSync" value="${login.loginId}">
								</div>
								
								<div class="input__box sign__up__form">
									<label for="name" class="font_size_up">이름<span>*</span></label>
									<input validationText="이름" type="text"  
											id="name" name="name" value="${login.name}">
								</div>

								<div class="input__box sign__up__form">
									<label for="jumin" class="font_size_up">주민등록번호<span>*</span></label>
									<input class="numberOnly" numberSize="13" validationText="주민등록번호" type="text"
											id="jumin" name="jumin" value="${login.jumin}">
								</div>

								<div class="input__box sign__up__form">
									<label for="nickname" class="font_size_up">닉네임<span>*</span></label>
									<input validationText="닉네임" type="text" 
											id="nickname" name="nickname" value="${login.nickname}">
								</div>
							
								<div class="input__box sign__up__form">
									<label for="phone" class="font_size_up">연락처<span>*</span></label>
									<input class="numberOnly" numberSize="11" validationText="연락처" type="tel"
											id="phone" name="phone" value="${login.phone}">
								</div>
							
								<div class="input__box sign__up__form">
									<label for="address" class="font_size_up">주소<span>*</span></label>
									<input validationText="주소" type="text" 
											id="address" name="address" value="${login.address}">
								</div>
							
								<div class="input__box sign__up__form">
									<label for="email" class="font_size_up">	이메일<span>*</span></label>
									<input validationText="이메일" type="email" 
											id="email" name="email" value="${login.email}">
								</div>
							
								<div class="form__btn al_center">
									<button class="memberModify radius" type="button">회원정보수정</button>
									<button class="memberDelete radius" type="button">회원탈퇴</button>
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
	$(".memberModify").on("click", function() {
		self.location = "/member/memberModify";
	});
	$(".memberDelete").on("click", function() {
		self.location = "/member/memberDelete";
	});
</script>
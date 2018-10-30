<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>

	<section class="my_account_area pt--80 pb--55 bg--white">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
				</div>
				<div class="col-lg-12 col-12">
					<div class="my__account__wrapper">
						<h3 class="account__title">회원상세정보</h3>
						<form action="" method="post" class="validationForm">
							<div class="account__form">
								<div class="input__box sign__up__form">
									<label for="login_id"">아이디 <span>*</span></label>
									<input style="width:60%" validationText="아이디" type="text" 
											id="login_id" name="loginId" class="doubleCheckSync" value="${login.loginId}">
								</div>
								
								<div class="input__box sign__up__form">
									<label for="name">이름<span>*</span></label>
									<input validationText="이름" type="text"  
											id="name" name="name" value="${login.name}">
								</div>

								<div class="input__box sign__up__form">
									<label for="jumin">주민등록번호<span>*</span></label>
									<input class="numberOnly" numberSize="13" validationText="주민등록번호" type="text"
											id="jumin" name="jumin" value="${login.jumin}">
								</div>

								<div class="input__box sign__up__form">
									<label for="nickname">닉네임<span>*</span></label>
									<input validationText="닉네임" type="text" 
											id="nickname" name="nickname" value="${login.nickname}">
								</div>
							
								<div class="input__box sign__up__form">
									<label for="phone">연락처<span>*</span></label>
									<input class="numberOnly" numberSize="11" validationText="연락처" type="tel"
											id="phone" name="phone" value="${login.phone}">
								</div>
							
								<div class="input__box sign__up__form">
									<label for="address">주소<span>*</span></label>
									<input validationText="주소" type="text" 
											id="address" name="address" value="${login.address}">
								</div>
							
								<div class="input__box sign__up__form">
									<label for="email">	이메일<span>*</span></label>
									<input validationText="이메일" type="email" 
											id="email" name="email" value="${login.email}">
								</div>
							
								<div class="form__btn">
										<button class="memberModify" type="button">회원정보수정</button>
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
</script>
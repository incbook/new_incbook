<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>

	<section class="my_account_area pt--80 pb--55 bg--white">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
				</div>
				<div class="col-lg-6 col-12">
					<div class="my__account__wrapper">
						<div class="cus_title">
							<p>
								<strong>회원가입</strong>
							</p>
						</div>
						<form action="/member/signUp" method="post" class="validationForm">
							<div class="account__form">
								<div class="input__box sign__up__form">
									<label for="login_id" class="font_size_up">아이디 <span>*</span></label>
									<input style="width:60%" validationText="아이디" type="text" id="login_id" name="loginId" class="doubleCheckSync">
									<span class="form__btn">
										<button class="btn doubleCheck" type="button">중복확인</button>
									</span><br>
									<span id="doubleChecked">
										<input type="hidden" id="checking" value="true">
									</span>
								</div>
								
								<div class="input__box sign__up__form">
									<label for="password" class="font_size_up">비밀번호 <span>*</span></label>
									<input validationText="비밀번호" style="width:60%" type="password"  id="password" name="password" class="passwordCheck">
									<br>
									<span id="passwordChecked">
										<input type="hidden" id="passwordChecking" value="false">
									</span>
								</div>

								<div class="input__box sign__up__form">
									<label for="password" class="font_size_up">비밀번호 확인 <span>*</span></label>
									<input type="password"  id="password_check" name="password_check" class="passwordCheck">
								</div>
								
								<div class="input__box sign__up__form">
									<label for="name" class="font_size_up">이름<span>*</span></label>
									<input validationText="이름" type="text"  id="name" name="name">
								</div>

								<div class="input__box sign__up__form">
									<label for="jumin" class="font_size_up">주민등록번호<span>*</span></label>
									<input class="numberOnly" numberSize="13" validationText="주민등록번호" type="text"  id="jumin" name="jumin">
								</div>

								<div class="input__box sign__up__form">
									<label for="nickname" class="font_size_up">닉네임<span>*</span></label>
									<input validationText="닉네임" type="text"  id="nickname" name="nickname">
								</div>
							
								<div class="input__box sign__up__form">
									<label for="phone" class="font_size_up">연락처<span>*</span></label>
									<input class="numberOnly" numberSize="11" validationText="연락처" type="tel" id="phone" name="phone">
								</div>
							
								<div class="input__box sign__up__form">
									<label for="address" class="font_size_up">주소<span>*</span></label>
									<input validationText="주소" type="text"  id="address" name="address">
								</div>
							
								<div class="input__box sign__up__form">
									<label for="email" class="font_size_up">	이메일<span>*</span></label>
									<input validationText="이메일" type="email"  id="email" name="email">
								</div>
							
								<div class="form_all">
									<div class="form__btn al_center">
										<button class="mainPage radius" type="button">취소</button>
										<button class="validationFormButton radius" type="button">확인</button>
									</div>
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
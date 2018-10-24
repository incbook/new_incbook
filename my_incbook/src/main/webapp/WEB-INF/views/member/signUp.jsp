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
						<h3 class="account__title">회원가입</h3>
						<form action="" method="post">
							<div class="account__form">
								<div class="input__box sign__up__form">
									<label for="login_id"">아이디 <span>*</span></label>
									<input type="text" id="login_id" name="loginId">
								</div>
								
								<div class="input__box sign__up__form">
									<label for="password">비밀번호 <span>*</span></label>
									<input type="password"  id="password" name="password">
								</div>
								
								<div class="input__box sign__up__form">
									<label for="name">이름<span>*</span></label>
									<input type="text"  id="name" name="name">
								</div>

								<div class="input__box sign__up__form">
									<label for="jumin">주민등록번호<span>*</span></label>
									<input type="text"  id="jumin" name="jumin">
								</div>

								<div class="input__box sign__up__form">
									<label for="nickname">닉네임<span>*</span></label>
									<input type="text"  id="nickname" name="nickname">
								</div>
							
								<div class="input__box sign__up__form">
									<label for="phone">연락처<span>*</span></label>
									<input type="tel" id="phone" name="phone">
								</div>
							
								<div class="input__box sign__up__form">
									<label for="address">주소<span>*</span></label>
									<input type="text"  id="address" name="address">
								</div>
							
								<div class="input__box sign__up__form">
									<label for="email">	이메일<span>*</span></label>
									<input type="email"  id="email" name="email">
								</div>
							
								<div class="form__btn">
										<button type="button">취소</button>
										<button>확인</button>
								</div>
							</div>					
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	
<%@include file="../include/footer.jsp"%>
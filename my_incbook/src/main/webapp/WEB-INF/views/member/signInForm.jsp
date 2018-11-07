<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>

	<section class="my_account_area pt--80 pb--55 bg--white">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
				</div>
				<div class="col-lg-4 col-12">
					<div class="my__account__wrapper">
						<h3 class="account__title">로그인페이지다!!!!!</h3>
						<form action="/member/signIn" method="post">
							<div class="account__form">
								<div class="input__box">
									<label for="login_id">User ID <span>*</span></label>
									<input type=text  id="login_id" name="loginId">
								</div>
								<div class="input__box">
									<label for="password">Password<span>*</span></label>
									<input type=text  id="password" name="password">
								</div>
							
								<!-- <input type="submit" title="로그인" value="로그인"> -->
								
								<div class="form__btn custom__center">
										<button>로그인</button>
								</div>
								<div style="padding-top:15px;"></div>
								<span>
									<a class="forget_pass inLine" href="#">비밀번호 찾기</a> &nbsp; | &nbsp;
									<a class="forget_pass inLine" href="/member/signUp">회원가입</a>
								</span>
							</div>
						</form>
					</div>					
				</div>
			</div>
		</div>
	</section>

<%@include file="../include/footer.jsp"%>
<script src="/resources/js/custom/form.js"></script>

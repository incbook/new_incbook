<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>

	<section class="my_account_area pt--80 pb--55 bg--white pdb160">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
				</div>
				<div class="col-lg-4 col-12">
					<div class="my__account__wrapper">
						<h3 class="account__title" align="center">로그인 페이지</h3>
						<form action="/member/signIn" method="post">
							<div class="account__form">
								<div class="input__box">
									<label for="login_id" class="font_size_up">User ID <span>*</span></label>
									<input type=text  id="login_id" name="loginId">
								</div>
								<div class="input__box">
									<label for="password" class="font_size_up">Password<span>*</span></label>
									<input type="password"  id="password" name="password">
								</div>
							
								<div class="form_all">
									<div class="form__btn custom__center">
											<button class="radius">로그인</button>
									</div>
								</div>
								
								<div style="padding-top:15px;"></div>
								<span>
									<a class="forget_pass inLine" href="#">비밀번호 찾기</a> &nbsp; | &nbsp;
									<a class="forget_pass inLine" href="/member/signUp">회원가입</a>
								</span>
								<div align="center">
									<span>
										<a class="forget_pass inLine" href="/member/signUp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;회원가입</a> &nbsp; | &nbsp;
										<a class="forget_pass inLine" href="#">비밀번호 찾기</a>
									</span>
								</div>
							</div>
						</form>
					</div>					
				</div>
			</div>
		</div>
	</section>
<div style="height: 29px;"></div>
<%@include file="../include/footer.jsp"%>
<script src="/resources/js/custom/form.js"></script>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>

	<section class="my_account_area pt--80 pb--55 bg--white">
		<div class="container">
			<div class="row">
			
				<div class="col-lg-3 col-3">
					<h3 class="wedget__title">My Page</h3>
					<ul>
						<li><a href='http://localhost:8080/member/memberDetail';">회원정보수정</a></li>
						<li><a href="http://localhost:8080/payment/chargeHistory">포인트 충전 내역</a></li>
						<li><a href="http://localhost:8080/own/myOwnList">내가 등록한 도서</a></li>
						<li><a href="http://localhost:8080/trade/lendersPage">대여자 페이지</a></li>
						<li>회원 탈퇴</li>
						<li>회원 탈퇴</li>
						<li>회원 탈퇴</li>
						<li>회원 탈퇴</li>
						<li>회원 탈퇴</li>
						<li>회원 탈퇴</li>
					</ul>
				</div>
				
				<div class="col-lg-9 col-9">
					<div class="my__account__wrapper">
						<div class="shop__list__wrapper d-flex flex-wrap flex-md-nowrap justify-content-between">
							<div class="shop__list nav justify-content-center" role="tablist">
							</div>
							<p>
								<strong>회원상세정보</strong>
							</p>
							<div class="orderby__wrapper">
								<span></span>
							</div>
						</div>
						<form action="" method="post" class="validationForm">
							<div class="account__form">
								<div class="input__box sign__up__form">
									<label for="login_id">아이디 <span>*</span></label>
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
										<button class="memberDelete" type="button">회원탈퇴</button>
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
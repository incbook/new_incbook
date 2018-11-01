<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>
<input type="hidden" value="${loginTry}" id="loginTry"/>
<input type="hidden" value="${loginAuth}" id="loginAuth"/>

	<section class="my_account_area pt--80 pb--55 bg--white">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
				</div>
				<div class="col-lg-4 col-12">
					<div class="my__account__wrapper">
						<h3 class="account__title">탈퇴 페이지다!!!!!</h3>
						<form id="memberDeleteForm" action="/member/memberDelete" method="post">
							<div class="account__form">
								<div class="input__box">
									<label for="login_id">비밀번호 <span>*</span></label>
									<input type="password" id="password" name="password">
									<input type="hidden"  id="id" name="id" value="${login.id}">
								</div>
								
								<div class="form__btn custom__center">
										<button id="memberWithdrawal" type="button">탈퇴</button>
								</div>
								<div id="passwordChecking">
								</div>
							</div>
						</form>
					</div>					
				</div>
			</div>
		</div>
	</section>

<%@include file="../include/footer.jsp"%>
<script> 
	$(function() {
		$("#password").change(function() {
			ajaxPasswordCheck();
		});
		$("#memberWithdrawal").on("click", function() {
			resultActive();
		});
	});
	
	function ajaxPasswordCheck() {
		var form = $("#memberDeleteForm");
		var id = $("#id").val();
		var password = $("#password").val();
		
		$.ajax({
			url: "/member/passwordChecked",
			data: {
				"id" : id,
				"password" : password
			},
			type: 'GET',
			success: resultPaging
		});
	}
	
	function resultActive() {
		var checkResult = $("#checkResult").val();
		
		if (checkResult == "success") {
			form.submit();
		} else if (checkResult == "fail") {
			alert("비밀번호를 확인해주세요");
		}
	}
	
	function resultPaging(msg) {
		$("#passwordChecking").html(msg);
	}
</script>
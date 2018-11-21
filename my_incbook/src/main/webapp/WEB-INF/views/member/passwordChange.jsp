<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<!-- Google font (font-family: 'Roboto', sans-serif; Poppins ; Satisfy) -->
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,600,600i,700,700i,800" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900"	rel="stylesheet">
		
		<!-- Stylesheets -->
		<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
		<link rel="stylesheet" href="/resources/css/plugins.css">
		<link rel="stylesheet" href="/resources/style.css">
		
		<!-- Cusom css -->
		<link rel="stylesheet" href="/resources/css/custom.css">
		
		<!-- Modernizer js -->
		<script src="/resources/js/vendor/modernizr-3.5.0.min.js"></script>
		
		<!-- Jquery js -->
		<script src="/resources/js/vendor/jquery-3.2.1.min.js"></script>
		
		<script>
			$(function() {
				var opener_url = window.opener.document.URL;
				$(".selector").on("click", function() {
					var opener_url_new = window.opener.document.URL;
					
					if (opener_url != opener_url_new || !opener) {
						window.close();
					} else {
						var book_id = $(this).attr("book_id");
						var book_title = $(this).attr("book_title");
						opener.document.getElementById("title").value = book_title;
						opener.document.getElementById("book_id").value = book_id;
						 
						window.close();
					}
				});
				
			});
		</script>
	</head>

	<body>
		<!-- End Bradcaump area -->
		<div class="board_name">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<h3 align="center" class="mt_20">비밀번호 변경</h3>
						<div class="input__box">
							<form class="account__form">
								<div class="input__box sign__up__form">
									<p align="center"><mark>&ensp;변경하실 비밀번호를 입력해주세요&ensp;</mark></p>
									<label for="writer" class="right1 size_up3">비밀번호 <span>*</span></label> 
									<input type="text">
								</div>
								<div class="input__box sign__up__form">
									<label for="writer" class="right1 size_up3">비밀번호 확인 <span>*</span></label> 
									<input type="text">
								</div>
								
								<div class="form__btn cecenter">
									<button type="button" id="passwordOK" class="radius cecenter">확인</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>

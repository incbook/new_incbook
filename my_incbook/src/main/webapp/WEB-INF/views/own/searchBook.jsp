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
				$(".selector").on("click", function() {
					var book_id = $(this).attr("book_id");
					var book_title = $(this).attr("book_title");
					 opener.document.getElementById("title").value = book_title;
					 opener.document.getElementById("book_id").value = book_id;
					 
					 window.close();
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
						<h3># 도서 검색</h3>
					</div>
				</div>
			</div>
		</div>
		<section class="wn__product__area brown--color pb--30 board_pd">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<table class="table table-striped">
							<thead>
								<tr>
									<th scope="col">이미지</th>
									<th scope="col">제목</th>
									<th scope="col">저자</th>
									<th scope="col">출판사</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list}" var="book">
									<tr class="account__form" val="22">
										<th scope="row">1</th>
										<td>${book.title}</td>
										<td>${book.writer}</td>
										<td>${book.publisher}</td>
										<td style="width:10%">
											<div class="input__box">
												<span class="form__btn">
													<button class="btn selector" type="button" book_title="${book.title}" book_id="${book.id}">선택</button>
												</span>
											</div>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</section>
	</body>
</html>

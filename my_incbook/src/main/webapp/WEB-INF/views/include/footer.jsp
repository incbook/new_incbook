<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Footer Area -->
<footer id="wn__footer" class="footer__area bg__cat--8 brown--color">
	<div class="footer-static-top">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="footer__widget footer__menu">
						<div class="ft__logo">
							<a href="index.html"> <img src="/resources/images/logo/3.png"
								alt="logo">
							</a>
							<p>잉크북이다!!!!!!!!!</p>
						</div>
						<div class="footer__content">
							<ul
								class="social__net social__net--2 d-flex justify-content-center">
								<li><a href="#"><i class="bi bi-facebook"></i></a></li>
								<li><a href="#"><i class="bi bi-google"></i></a></li>
								<li><a href="#"><i class="bi bi-twitter"></i></a></li>
								<li><a href="#"><i class="bi bi-linkedin"></i></a></li>
								<li><a href="#"><i class="bi bi-youtube"></i></a></li>
							</ul>
							<ul class="mainmenu d-flex justify-content-center">
								<li><a href="index.html">Trending</a></li>
								<li><a href="index.html">Best Seller</a></li>
								<li><a href="index.html">All Product</a></li>
								<li><a href="index.html">Wishlist</a></li>
								<li><a href="index.html">Blog</a></li>
								<li><a href="index.html">Contact</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="copyright__wrapper">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-12">
					<div class="copyright">
						<div class="copy__right__inner text-left">
							<p>
								Copyright <i class="fa fa-copyright"></i> <a href="#">InCBook</a>
								&emsp;All Rights Reserved.
							</p>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-12">
					<div class="payment text-right">
						<img src="/resources/images/icons/payment.png" alt="" />
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>
<!-- //Footer Area -->
<!-- QUICKVIEW PRODUCT -->
<div id="quickview-wrapper">

</div> 
<!-- END QUICKVIEW PRODUCT -->
<!-- //Main wrapper -->

<div id="logIO_footer" class="alert-secondary jbMenu">
  <p>브라우저 아래에 고정되는 footer부분</p>
</div>


<!-- JS Files -->
<script src="/resources/js/popper.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/plugins.js"></script>
<script src="/resources/js/active.js"></script>
<!-- Custom JS Files -->
<script src="/resources/js/custom/clickPageMove.js"></script>
<script src="/resources/js/custom/quickView.js"></script>
<script src="/resources/js/custom/jquery.timepicker.min.js"></script>

</body>
</html>
<script>
	$(document).ready(function() {
				$('#searchBtn').on(
						"click",
						function() {
							self.location = "/book/search?"
									+ "&searchType="
									+ $("select option:selected").val()
									+ "&keyword="
									+ encodeURIComponent($('#keywordInput')
											.val());
						});

				$(function() {
					$('#list1').hide();
					$('.hover1').mouseenter(function() {
						$('#list1').show();
					});
					$('.hover1').mouseleave(function() {
						$('.hover1').mouseleave(function() {
							$('#list1').hide();
						});
					});
				});
				$(function() {
					$('#list2').hide();
					$('.hover2').mouseenter(function() {
						$('#list2').show();
					});
					$('.hover2').mouseleave(function() {
						$('.hover2').mouseleave(function() {
							$('#list2').hide();
						});
					});
				});
				
				var loginTry = $("#loginTry").val();
				var logoutTry = $("#logoutTry").val();
				var loginAuth = $("#loginAuth").val();
				
				if (loginTry == "fail") {
					alert("아이디 또는 비밀번호를 확인해주세요");
				} else if (loginTry == "success") {
					logIO_footer_appear("로그인 하셨습니다.");
				}
				
				if (logoutTry == "success") {
					logIO_footer_appear("로그아웃 하셨습니다.");
				}
				
				
				if (loginAuth == "fail") {
					alert("로그인해야 이용할 수 있는 페이지 입니다.");
				}
				
				
				function logIO_footer_appear(text) {
					$("#logIO_footer p").html(text);
					$("#logIO_footer").fadeIn(3000);
					setTimeout(function() {
						$("#logIO_footer").fadeOut(3000);
					},3000);
				}
			});
	
	
</script>


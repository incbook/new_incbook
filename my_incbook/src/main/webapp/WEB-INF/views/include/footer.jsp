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

<!-- JS Files -->
<script src="/resources/js/popper.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/plugins.js"></script>
<script src="/resources/js/active.js"></script>
<!-- Custom JS Files -->
<script src="/resources/js/custom/clickPageMove.js"></script>
<script src="/resources/js/custom/quickView.js"></script>

</body>
</html>
<script>
	$(document).ready(
			function() {
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

			});

</script>
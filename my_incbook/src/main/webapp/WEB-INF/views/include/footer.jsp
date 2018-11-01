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
<<<<<<< HEAD

=======
<!-- //Footer Area -->
<!-- QUICKVIEW PRODUCT -->
<!-- 
<div id="quickview-wrapper">
	Modal
	<div class="modal fade" id="productmodal" tabindex="-1" role="dialog">
		<div class="modal-dialog modal__container" role="document">
			<div class="modal-content">
				<div class="modal-header modal__header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="modal-product">
						Start product images
						<div class="product-images">
							<div class="main-image images">
								<img alt="big images"
									src="/resources/images/product/big-img/1.jpg">
							</div>
						</div>
						end product images
						<div class="product-info">
							<h1>Simple Fabric Bags</h1>
							<div class="rating__and__review">
								<ul class="rating">
									<li><span class="ti-star"></span></li>
									<li><span class="ti-star"></span></li>
									<li><span class="ti-star"></span></li>
									<li><span class="ti-star"></span></li>
									<li><span class="ti-star"></span></li>
								</ul>
								<div class="review">
									<a href="#">4 customer reviews</a>
								</div>
							</div>
							<div class="price-box-3">
								<div class="s-price-box">
									<span class="new-price">$17.20</span> <span class="old-price">$45.00</span>
								</div>
							</div>
							<div class="quick-desc">Designed for simplicity and made
								from high quality materials. Its sleek geometry and material
								combinations creates a modern look.</div>
							<div class="select__color">
								<h2>Select color</h2>
								<ul class="color__list">
									<li class="red"><a title="Red" href="#">Red</a></li>
									<li class="gold"><a title="Gold" href="#">Gold</a></li>
									<li class="orange"><a title="Orange" href="#">Orange</a></li>
									<li class="orange"><a title="Orange" href="#">Orange</a></li>
								</ul>
							</div>
							<div class="select__size">
								<h2>Select size</h2>
								<ul class="color__list">
									<li class="l__size"><a title="L" href="#">L</a></li>
									<li class="m__size"><a title="M" href="#">M</a></li>
									<li class="s__size"><a title="S" href="#">S</a></li>
									<li class="xl__size"><a title="XL" href="#">XL</a></li>
									<li class="xxl__size"><a title="XXL" href="#">XXL</a></li>
								</ul>
							</div>
							<div class="social-sharing">
								<div class="widget widget_socialsharing_widget">
									<h3 class="widget-title-modal">Share this product</h3>
									<ul
										class="social__net social__net--2 d-flex justify-content-start">
										<li class="facebook"><a href="#" class="rss social-icon"><i
												class="zmdi zmdi-rss"></i></a></li>
										<li class="linkedin"><a href="#"
											class="linkedin social-icon"><i
												class="zmdi zmdi-linkedin"></i></a></li>
										<li class="pinterest"><a href="#"
											class="pinterest social-icon"><i
												class="zmdi zmdi-pinterest"></i></a></li>
										<li class="tumblr"><a href="#" class="tumblr social-icon"><i
												class="zmdi zmdi-tumblr"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="addtocart-btn">
								<a href="#">Add to cart</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div> -->
<!-- END QUICKVIEW PRODUCT -->
<!-- //Main wrapper -->
>>>>>>> 6cdb2f9312710665b41feaa79e265b665af50821

<!-- JS Files -->
<script src="/resources/js/vendor/jquery-3.2.1.min.js"></script>
<script src="/resources/js/popper.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/plugins.js"></script>
<script src="/resources/js/active.js"></script>
<!-- Custom JS Files -->
<script src="/resources/js/custom/clickPageMove.js"></script>

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
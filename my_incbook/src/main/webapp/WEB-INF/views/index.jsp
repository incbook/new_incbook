<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="include/header.jsp"%>

<!-- Start Slider area -->
<div
	class="slider-area brown__nav slider--15 slide__activation slide__arrow01 owl-carousel owl-theme">
	<!-- Start Single Slide -->
	<div
		class="slide animation__style10 bg-image--1 fullscreen align__center--left">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="slider__content">
						<div class="contentbox">
							<h2>
								Rent <span>your </span>
							</h2>
							<h2>
								favorite <span>books </span>
							</h2>
							<h2>
								here <span>INCBOOK </span>
							</h2>
							<a class="shopbtn" href="book/allTop100">Go now</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Single Slide -->
	<!-- Start Single Slide -->
	<div
		class="slide animation__style10 bg-image--3 fullscreen align__center--left">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="slider__content">
						<div class="contentbox">
							<h2>
								Buy <span>your </span>
							</h2>
							<h2>
								favourite <span>Book </span>
							</h2>
							<h2>
								from <span>Here </span>
							</h2>
							<a class="shopbtn" href="#">shop now</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Single Slide -->
</div>
<!-- End Slider area -->

<c:if test="${login ne null}">
<c:if test="${personalizeList ne null}">
<!-- Start Personalizesletter Area -->

<section class="wn__product__area brown--color pt--80  pb--30">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="section__title text-center">
					<h2 class="title__be--2">
						<span class="color--theme">${login.nickname}</span> 님을 위한 맞춤 도서
					</h2>
					<p>Only you can choose what you want,<br>
						Let's read all the books of this world and raise knowledge together!</p>
				</div>
			</div>
		</div>
		<!-- Start Single Tab Content -->
		<div
			class="furniture--4 border--round arrows_style owl-carousel owl-theme row mt--50">
			
			<!-- Start Single Product -->
			<c:forEach items="${personalizeList}" var="BookVO" end="8">
				<div class="product product__style--3">
					<div class="col-lg-3 col-md-4 col-sm-6 col-12">
						<div class="product__thumb">
							<a class="first__img"
								href='/book/readPage&id=${BookVO.id}&prePage=new'> <img
								src="/img/${BookVO.id}/${BookVO.image}" alt="product image"
								width=240 height=351>
							</a> <a class="second__img animation1"
								href='/book/readPage?id=${BookVO.id}&prePage=new'> <img
								src="/img/${BookVO.id}/${BookVO.image}" alt="product image"
								width=240 height=351>
							</a>

						</div>
						<div class="product__content content--center">
							<h4>
								<a href="single-product.html">${BookVO.title}</a>
							</h4>
							<ul class="prize d-flex">
								<li>${BookVO.genre}</li>
							</ul>
							<div class="action" quickId="${BookVO.id}" quickPrePage="new">
								<div class="actions_inner">
									<ul class="add_to_links">
										<li><a data-toggle="modal" title="Quick View"
											class="quickview modal-view detail-link" href="#productmodal">
												<i class="bi bi-search"></i>
										</a></li>
									</ul>
								</div>
							</div>
							<div class="product__hover--content">
								<ul class="rating d-flex">
									<c:if test="${BookVO.averageScore==5}">
										<li class="on"><i class="fa fa-star-o"></i></li>
										<li class="on"><i class="fa fa-star-o"></i></li>
										<li class="on"><i class="fa fa-star-o"></i></li>
										<li class="on"><i class="fa fa-star-o"></i></li>
										<li class="on"><i class="fa fa-star-o"></i></li>
									</c:if>
									<c:if test="${BookVO.averageScore==4}">
										<li class="on"><i class="fa fa-star-o"></i></li>
										<li class="on"><i class="fa fa-star-o"></i></li>
										<li class="on"><i class="fa fa-star-o"></i></li>
										<li class="on"><i class="fa fa-star-o"></i></li>
										<li><i class="fa fa-star-o"></i></li>
									</c:if>
									<c:if test="${BookVO.averageScore==3}">
										<li class="on"><i class="fa fa-star-o"></i></li>
										<li class="on"><i class="fa fa-star-o"></i></li>
										<li class="on"><i class="fa fa-star-o"></i></li>
										<li><i class="fa fa-star-o"></i></li>
										<li><i class="fa fa-star-o"></i></li>
									</c:if>
									<c:if test="${BookVO.averageScore==2}">
										<li class="on"><i class="fa fa-star-o"></i></li>
										<li class="on"><i class="fa fa-star-o"></i></li>
										<li><i class="fa fa-star-o"></i></li>
										<li><i class="fa fa-star-o"></i></li>
										<li><i class="fa fa-star-o"></i></li>
									</c:if>
									<c:if test="${BookVO.averageScore==1}">
										<li class="on"><i class="fa fa-star-o"></i></li>
										<li><i class="fa fa-star-o"></i></li>
										<li><i class="fa fa-star-o"></i></li>
										<li><i class="fa fa-star-o"></i></li>
										<li><i class="fa fa-star-o"></i></li>
									</c:if>
									<c:if test="${BookVO.averageScore==0}">
										<li><i class="fa fa-star-o"></i></li>
										<li><i class="fa fa-star-o"></i></li>
										<li><i class="fa fa-star-o"></i></li>
										<li><i class="fa fa-star-o"></i></li>
										<li><i class="fa fa-star-o"></i></li>
									</c:if>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
			<!-- Start Single Product -->
			
		</div>
	</div>
</section>
<!-- End Personalizesletter Area -->
</c:if>
</c:if>

<!-- Start NEwsletter Area -->
<section class="wn__product__area brown--color pt--80  pb--30">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="section__title text-center">
					<h2 class="title__be--2">
						신간 <span class="color--theme">도서</span>
					</h2>
					<p>Only you can choose what you want,<br>
						Let's read all the books of this world and raise knowledge together!</p>
				</div>
			</div>
		</div>
		<!-- Start Single Tab Content -->
		<div
			class="furniture--4 border--round arrows_style owl-carousel owl-theme row mt--50">
			<!-- Start Single Product -->
			<c:forEach items="${list}" var="BookVO" end="8">
				<div class="product product__style--3">
					<div class="col-lg-3 col-md-4 col-sm-6 col-12">
						<div class="product__thumb">
							<a class="first__img"
								href='/book/readPage&id=${BookVO.id}&prePage=new'> <img
								src="/img/${BookVO.id}/${BookVO.image}" alt="product image"
								width=240 height=351>
							</a> <a class="second__img animation1"
								href='/book/readPage?id=${BookVO.id}&prePage=new'> <img
								src="/img/${BookVO.id}/${BookVO.image}" alt="product image"
								width=240 height=351>
							</a>

						</div>
						<div class="product__content content--center">
							<h4>
								<a href="single-product.html">${BookVO.title}</a>
							</h4>
							<ul class="prize d-flex">
								<li>${BookVO.genre}</li>
							</ul>
							<div class="action" quickId="${BookVO.id}" quickPrePage="new">
								<div class="actions_inner">
									<ul class="add_to_links">
										<li><a data-toggle="modal" title="Quick View"
											class="quickview modal-view detail-link" href="#productmodal">
												<i class="bi bi-search"></i>
										</a></li>
									</ul>
								</div>
							</div>
							<div class="product__hover--content">
								<ul class="rating d-flex">
									<c:if test="${BookVO.averageScore==5}">
										<li class="on"><i class="fa fa-star-o"></i></li>
										<li class="on"><i class="fa fa-star-o"></i></li>
										<li class="on"><i class="fa fa-star-o"></i></li>
										<li class="on"><i class="fa fa-star-o"></i></li>
										<li class="on"><i class="fa fa-star-o"></i></li>
									</c:if>
									<c:if test="${BookVO.averageScore==4}">
										<li class="on"><i class="fa fa-star-o"></i></li>
										<li class="on"><i class="fa fa-star-o"></i></li>
										<li class="on"><i class="fa fa-star-o"></i></li>
										<li class="on"><i class="fa fa-star-o"></i></li>
										<li><i class="fa fa-star-o"></i></li>
									</c:if>
									<c:if test="${BookVO.averageScore==3}">
										<li class="on"><i class="fa fa-star-o"></i></li>
										<li class="on"><i class="fa fa-star-o"></i></li>
										<li class="on"><i class="fa fa-star-o"></i></li>
										<li><i class="fa fa-star-o"></i></li>
										<li><i class="fa fa-star-o"></i></li>
									</c:if>
									<c:if test="${BookVO.averageScore==2}">
										<li class="on"><i class="fa fa-star-o"></i></li>
										<li class="on"><i class="fa fa-star-o"></i></li>
										<li><i class="fa fa-star-o"></i></li>
										<li><i class="fa fa-star-o"></i></li>
										<li><i class="fa fa-star-o"></i></li>
									</c:if>
									<c:if test="${BookVO.averageScore==1}">
										<li class="on"><i class="fa fa-star-o"></i></li>
										<li><i class="fa fa-star-o"></i></li>
										<li><i class="fa fa-star-o"></i></li>
										<li><i class="fa fa-star-o"></i></li>
										<li><i class="fa fa-star-o"></i></li>
									</c:if>
									<c:if test="${BookVO.averageScore==0}">
										<li><i class="fa fa-star-o"></i></li>
										<li><i class="fa fa-star-o"></i></li>
										<li><i class="fa fa-star-o"></i></li>
										<li><i class="fa fa-star-o"></i></li>
										<li><i class="fa fa-star-o"></i></li>
									</c:if>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
			<!-- Start Single Product -->
		</div>
	</div>
</section>
<!-- Start NEwsletter Area -->
<section class="wn__newsletter__area bg-image--2">
	<div class="container">
		<div class="row">
			<div class="col-lg-7 offset-lg-5 col-md-12 col-12 ptb--150">
				<div class="section__title text-center">
					<h2>Project Introduction</h2>
				</div>
				<br>
				<div class="newsletter__block text-center">
					<p>
						Individual & Communication<br> Book club<br>
						Personalization Customize Service<br> <br> 기간을 정해 낮은
						가격으로 대여할 수 있는 고객 맞춤 마인드, <br> 반응형 웹사이트로 UX를 깊게 생각하며 UI를 제작한
						섬세한 마인드
					</p>
					<form action="#">
						<div class="newsletter__box">
							<input type="email">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>

<%@include file="include/footer.jsp"%>
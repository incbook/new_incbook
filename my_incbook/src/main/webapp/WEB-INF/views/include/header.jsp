<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>잉크북 페이지입니다!!!!!!!!!</title>
	<meta name="description" content="">
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
</head>
<body>
	<!-- Main wrapper -->
	<div class="wrapper" id="wrapper">
		<!-- Header -->
		<header id="wn__header"
			class="header__area header__absolute sticky__header">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-6 col-sm-6 col-6 col-lg-2">
						<div class="logo">
							<a href="http://www.naver.com"> <!-- 로고 누르면 index로 경로설정 -->
							<img src="/resources/images/logo/logo.png" alt="logo images">
							</a>
						</div>
					</div>
					<div class="col-lg-8 d-none d-lg-block">
						<nav class="mainmenu__nav">
							<ul class="meninmenu d-flex justify-content-start">
								<li class="drop with--one--item"><a href="index.html">InC Book</a></li>
								<li class="drop"><a href="#">도서차트</a>
									<div class="megamenu mega03">
										<ul class="item item03">
											<li class="title">Categories</li>
											<li><a href="/book/allTop100">TOP-100</a></li>
											<li><a href="/book/newBookChart">NEW-도서</a></li>
										</ul>

									</div></li>
								<li class="drop"><a href="shop-grid.html">도서등록</a>
									<div class="megamenu mega03">
										<ul class="item item03">
											<li class="title">Categories</li>
											<li><a href="/book/infoInsert">도서 상세정보 등록</a></li>
											<li><a href="/own/ownInsert?isRent='가능'">대여도서 등록</a></li>
											<li><a href="/own/ownInsert?isSell='가능'">판매도서 등록 </a></li>
											<li><a href="/own/ownInsert?isRent='가능'&isSell='가능'">대여&판매 동시가능 도서 등록 </a></li>
										</ul>

									</div></li>
								<li class="drop"><a href="shop-grid.html">커뮤니티</a>
									<div class="megamenu mega02">
										<ul class="item item02">
											<li class="title">Top Collections</li>
											<li><a href="shop-grid.html">American Girl</a></li>
											<li><a href="shop-grid.html">Diary Wimpy Kid</a></li>
											<li><a href="shop-grid.html">Finding Dory</a></li>
											<li><a href="shop-grid.html">Harry Potter</a></li>
											<li><a href="shop-grid.html">Land of Stories</a></li>
										</ul>
										<ul class="item item02">
											<li class="title">More For Kids</li>
											<li><a href="shop-grid.html">B&N Educators</a></li>
											<li><a href="shop-grid.html">B&N Kids' Club</a></li>
											<li><a href="shop-grid.html">Kids' Music</a></li>
											<li><a href="shop-grid.html">Toys & Games</a></li>
											<li><a href="shop-grid.html">Hoodies</a></li>
										</ul>
									</div></li>
								<li class="drop"><a href="#">Book club</a>
									<div class="megamenu dropdown">
										<ul class="item item01">
											<li><a href="about.html">About Page</a></li>
											<li class="label2"><a href="portfolio.html">Portfolio</a>
												<ul>
													<li><a href="portfolio.html">Portfolio</a></li>
													<li><a href="portfolio-details.html">Portfolio
															Details</a></li>
												</ul></li>
											<li><a href="my-account.html">My Account</a></li>
											<li><a href="cart.html">Cart Page</a></li>
											<li><a href="checkout.html">Checkout Page</a></li>
											<li><a href="wishlist.html">Wishlist Page</a></li>
											<li><a href="error404.html">404 Page</a></li>
											<li><a href="faq.html">Faq Page</a></li>
											<li><a href="team.html">Team Page</a></li>
										</ul>
									</div></li>
								<li class="drop"><a href="blog.html">Blog</a>
									<div class="megamenu dropdown">
										<ul class="item item01">
											<li><a href="blog.html">Blog Page</a></li>
											<li><a href="blog-details.html">Blog Details</a></li>
										</ul>
									</div>
								</li>
							</ul>
						</nav>
					</div>
					<div class="col-md-6 col-sm-6 col-6 col-lg-2">
						<ul class="header__sidebar__right d-flex justify-content-end align-items-center">
							<li class="shop_search"><a class="search__active" href="#"></a></li>
							
							<li class="setting__bar__icon"><a class="setting__active"
								href="#"></a>
								<div class="searchbar__content setting__block">
									<div class="content-inner">
										<div class="switcher-currency">
											<strong class="label switcher-label"> 
												<span>My Account</span>
											</strong>
											<div class="switcher-options">
												<div class="switcher-currency-trigger">
													<div class="setting__menu">
														<span>
															<a href="#">Compare Product</a>
														</span> 
														<span>
															<a href="#">My Account</a>
														</span> 
														<span>
															<a href="#">My Wishlist</a>
														</span>
														<c:if test="${login.id == null}">
															<span>
																<a href="/member/signUp">Sign Up</a>
															</span>
															<span>
																<a href="/member/signInForm">Sign In</a>
															</span>
														</c:if>
														<c:if test="${login.id != null}">
															<span>
																<a href="/member/memberDetail">회원상세정보</a>
															</span> 
														</c:if>  
														<span><a href="#">Create An Account</a>
														</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<!-- Start Mobile Menu -->
				<div class="row d-none">
					<div class="col-lg-12 d-none">
						<nav class="mobilemenu__nav">
							<ul class="meninmenu">
								<li><a href="index.html">INC BOOK</a></li>
								<li><a href="#">도서차트</a>
								<li><a href="#">도서등록</a>
								<li><a href="#">커뮤니티</a>
								<li><a href="#">BOOK CLUB</a>
								<li><a href="#">Pages</a>
									<ul>
										<li><a href="about.html">About Page</a></li>
										<li><a href="portfolio.html">Portfolio</a>
											<ul>
												<li><a href="portfolio.html">Portfolio</a></li>
												<li><a href="portfolio-details.html">Portfolio
														Details</a></li>
											</ul>
										</li>
										<li><a href="my-account.html">My Account</a></li>
										<li><a href="cart.html">Cart Page</a></li>
										<li><a href="checkout.html">Checkout Page</a></li>
										<li><a href="wishlist.html">Wishlist Page</a></li>
										<li><a href="error404.html">404 Page</a></li>
										<li><a href="faq.html">Faq Page</a></li>
										<li><a href="team.html">Team Page</a></li>
									</ul>
								</li>
								<li>
									<a href="shop-grid.html">Shop</a>
									<ul>
										<li><a href="shop-grid.html">Shop Grid</a></li>
										<li><a href="single-product.html">Single Product</a></li>
									</ul>
								</li>
								<li>
									<a href="blog.html">Blog</a>
									<ul>
										<li><a href="blog.html">Blog Page</a></li>
										<li><a href="blog-details.html">Blog Details</a></li>
									</ul>
								</li>
								<li>
									<a href="contact.html">Contact</a>
								</li>
							</ul>
						</nav>
					</div>
				</div>
				<!-- End Mobile Menu -->
				<div class="mobile-menu d-block d-lg-none"></div>
				<!-- Mobile Menu -->
			</div>
		</header>
		<!-- //Header -->
		<!-- Start Search Popup -->
		<div class="brown--color box-search-content search_active block-bg close__top">
			<form id="search_mini_form" class="minisearch" action="#">
				<div class="field__search">
					<select name= "searchType" id="hh_select" style="height: 30px;">
						<option value="null"
							<c:out value="${cri.searchType == null?'selected':''}"/>>
							---</option>
						<option value="tigewrpuco"
							<c:out value="${cri.searchType eq 'tigewrpuco'?'selected':''}"/>>
							All</option>
						<option value="title"
							<c:out value="${cri.searchType eq 'title'?'selected':''}"/>>
							title</option>
						<option value="genre"
							<c:out value="${cri.searchType eq 'genre'?'selected':''}"/>>
							genre</option>
						<option value="writer"
							<c:out value="${cri.searchType eq 'writer'?'selected':''}"/>>
							writer</option>
						<option value="publisher"
							<c:out value="${cri.searchType eq 'publisher'?'selected':''}"/>>
							publisher</option>
						<option value="content"
							<c:out value="${cri.searchType eq 'content'?'selected':''}"/>>
							content</option>

					</select> 
						<input type="text" name='keyword' id="keywordInput" value='${cri.keyword}'>
						<div class="action">
						<a href="#"><i class="zmdi zmdi-search" id="searchBtn"></i></a>
					</div>
				</div>
			</form>
			<div class="close__wrap">
				<span>close</span>
			</div>
		</div>
		
		<!-- End Search Popup -->
		

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

<html>
<head>

<title>INCBOOK</title>
<style>
.hover1 .gr03 .gg li {
	padding: 3px 12px;
	display: inline-block;
}

.hover2 .gr03 .gg li {
	padding: 3px 12px;
	display: inline-block;
}
</style>
</head>

<body>

</body>
</html>
<%@include file="../include/header.jsp"%>

<!-- Start Bradcaump area -->
<div class="ht__bradcaump__area bg-image--6">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="bradcaump__inner text-center">
					<h2 class="bradcaump-title">Shop Grid</h2>
					<nav class="bradcaump-content">
						<a class="breadcrumb_item" href="index.html">Home</a> <span
							class="brd-separetor">/</span> <span
							class="breadcrumb_item active">Shop Grid</span>
					</nav>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End Bradcaump area -->
<!-- Start Shop Page -->
<div
	class="page-shop-sidebar left--sidebar bg--white section-padding--lg">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-12 order-2 order-lg-1 md-mt-40 sm-mt-40">
				<div class="shop__sidebar">
					<aside class="wedget__categories poroduct--cat">
						<h3 class="wedget__title">전체 TOP-100</h3>
						<div class="" style="background-color: white;">
							<a href="allTop100">전체 TOP-100</a>
						</div>

						<h3 class="wedget__title">장르별 TOP-100</h3>
						<!--  여기야 -->

						<div class="hover1" style="background-color: white;">국내도서</div>
						<div id="list1" class="hover1" style="width: 836px;">
							<div
								style="border: 1px; background-color: white; position: absolute; float: right; z-index: 5; left: 200px; min-width: 600px; top: 30px;"
								class="gr03">

								<ul class="gg">
									<li><a href="">유아</a></li>
									<li><a href="">어린이</a></li>
									<li><a href="">전집/중고전집</a></li>
									<li><a href="">청소년</a></li>
									<li><a href="">좋은부모</a></li>
									<li><a href="">초등학교참고서</a></li>
									<li><a href="">중학교참고서</a></li>
									<li><a href="">고등학교참고서</a></li>
									<li><a href="">여행</a></li>
									<li><a href="">가정/요리/뷰티</a></li>
									<li><a href="">건강/취미/레저</a></li>
									<li><a href="">사전/기타</a></li>
									<li><a href="">잡지</a></li>
									<li><a href="">만화</a></li>
									<li><a href="">고전</a></li>
									<li><a href="">소설/시/희곡</a></li>
									<li><a href="">장르소설</a></li>
									<li><a href="">에세이</a></li>
									<li><a href="">인문학</a></li>
									<li><a href="">사회과학</a></li>
									<li><a href="">역사</a></li>
									<li><a href="">과학</a></li>
									<li><a href="">예술/대중문화</a></li>
									<li><a href="">종교/역학</a></li>
									<li><a href="">경제경영</a></li>
									<li><a href="">자기계발</a></li>
									<li><a href="">외국어</a></li>
									<li><a href="">컴퓨터/모바일</a></li>
									<li><a href="">대학교재</a></li>
									<li><a href="">수험서/자격증</a></li>
									<li><a href="">공무원 수험서</a></li>

								</ul>

							</div>
						</div>

						<div class="hover2" style="background-color: white;">외국도서</div>
						<div id="list2" class="hover2" style="width: 836px;">
							<div
								style="border: 1px; background-color: white; position: absolute; float: right; z-index: 5; left: 200px; min-width: 600px; top: 30px;"
								class="gr03">

								<ul class="gg">
									<li><a href="">영미도서</a></li>
									<li><a href="">소설/시/희곡</a></li>
									<li><a href="">ELT/어학/사전</a></li>
									<li><a href="">인문/사회</a></li>
									<li><a href="">경제경영</a></li>
									<li><a href="">자기계발</a></li>
									<li><a href="">자연과학</a></li>
									<li><a href="">컴퓨터</a></li>
									<li><a href="">예술/대중문화</a></li>
									<li><a href="">가정/원예/인테리어</a></li>
									<li><a href="">공예/취미/수집</a></li>
									<li><a href="">여행</a></li>
									<li><a href="">건강/스포츠</a></li>
									<li><a href="">청소년</a></li>
									<li><a href="">해외잡지</a></li>
									<li><a href="">일본도서</a></li>
									<li><a href="">잡지</a></li>
									<li><a href="">코믹</a></li>
									<li><a href="">문학</a></li>
									<li><a href="">실용/취미/생활</a></li>
									<li><a href="">애니메이션 굿즈</a></li>
									<li><a href="">중국도서</a></li>
									<li><a href="">소설</a></li>
									<li><a href="">중국어 교재</a></li>
									<li><a href="">어린이</a></li>
									<li><a href="">캐릭터</a></li>
									<li><a href="">그림책</a></li>
									<li><a href="">리더스</a></li>
									<li><a href="">챕터북</a></li>
									<li><a href="">동화책</a></li>
									<li><a href="">오디오북</a></li>
									<li><a href="">어린이사전</a></li>
									<li><a href="">개념학습</a></li>
									<li><a href="">코스북</a></li>
									<li><a href="">영어학습</a></li>
									<li><a href="">교과학습</a></li>
									<li><a href="">미국교과서</a></li>
									<li><a href="">수상작</a></li>
									<li><a href="">제2외국어/이중언어</a></li>
									<li><a href="">기타 언어권</a></li>
									<li><a href="">프랑스 도서</a></li>
									<li><a href="">독일 도서</a></li>
									<li><a href="">스페인 도서</a></li>
									<li><a href="">베트남 도서</a></li>
									<li><a href="">기타 도서</a></li>
								</ul>

							</div>
						</div>
						<h3 class="wedget__title">NEW-도서</h3>
						<div class="hover1" style="background-color: white;">
							<a href="newBookChart">NEW-도서</a>
						</div>



					</aside>
					<aside class="wedget__categories pro--range">
						<h3 class="wedget__title">Filter by price</h3>
						<div class="content-shopby">
							<div class="price_filter s-filter clear">
								<form action="#" method="GET">
									<div id="slider-range"></div>
									<div class="slider__range--output">
										<div class="price__output--wrap">
											<div class="price--output">
												<span>Price :</span> <input type="text" id="amount"
													readonly="">
											</div>
											<div class="price--filter">
												<a href="#">Filter</a>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</aside>

					<aside class="wedget__categories sidebar--banner">
						<img src="/resources/images/others/banner_left.jpg"
							alt="banner images">
						<div class="text">
							<h2>광고</h2>
							<h6>
								광고 <br> <strong>광고</strong>광고
							</h6>
						</div>
					</aside>
				</div>
			</div>
			<div class="col-lg-9 col-12 order-1 order-lg-2">
				<div class="row">
					<div class="col-lg-12">
						<div
							class="shop__list__wrapper d-flex flex-wrap flex-md-nowrap justify-content-between">
							<div class="shop__list nav justify-content-center" role="tablist">
								<a class="nav-item nav-link active" data-toggle="tab"
									href="#nav-grid" role="tab"> <i class="fa fa-th"></i>
								</a> <a class="nav-item nav-link" data-toggle="tab" href="#nav-list"
									role="tab"> <i class="fa fa-list"></i>
								</a>
							</div>
							<p>Showing 1–12 of 40 results</p>
							<div class="orderby__wrapper">
								<span>Sort By</span> <select class="shot__byselect">
									<option>Default sorting</option>
									<option>HeadPhone</option>
									<option>Furniture</option>
									<option>Jewellery</option>
									<option>Handmade</option>
									<option>Kids</option>
								</select>
							</div>
						</div>
					</div>
				</div>
				<div class="tab__container">
					<div class="shop-grid tab-pane fade show active" id="nav-grid"
						role="tabpanel">
						<div class="row">
							<!-- Start Single Product -->
							<c:forEach items="${list}" var="BookVO">
								<div
									class="product product__style--3 col-lg-4 col-md-4 col-sm-6 col-12">

									<div class="product__thumb">
										<a class="first__img" href="single-product.html"> <img
											src="/resources/images/books/1.jpg" alt="product image">
										</a> <a class="second__img animation1"
											href='/book/readPage${pageMaker.makeSearch(pageMaker.cri.page)}&id=${BookVO.id}'>
											<img src="/resources/images/books/2.jpg" alt="product image">
										</a>
										<div class="hot__box">
											<span class="hot-label">BEST SALLER</span>
										</div>
									</div>
									<div class="product__content content--center">
										<h4>
											<a href="single-product.html">${BookVO.title}</a>
										</h4>
										<ul class="prize d-flex">
											<li>$35.00</li>
											<li class="old_prize">$35.00</li>
										</ul>
										<div class="action">
											<div class="actions_inner">
												<ul class="add_to_links">
													<li><a class="cart" href="cart.html"> <i
															class="bi bi-shopping-bag4"></i>
													</a></li>
													<li><a class="wishlist" href="wishlist.html"> <i
															class="bi bi-shopping-cart-full"></i>
													</a></li>
													<li><a class="compare" href="#"> <i
															class="bi bi-heart-beat"></i>
													</a></li>
													<li><a data-toggle="modal" title="Quick View"
														class="quickview modal-view detail-link"
														href="#productmodal"> <i class="bi bi-search"></i>
													</a></li>
												</ul>
											</div>
										</div>
										<div class="product__hover--content">
											<ul class="rating d-flex">
												<li class="on"><i class="fa fa-star-o"></i></li>
												<li class="on"><i class="fa fa-star-o"></i></li>
												<li class="on"><i class="fa fa-star-o"></i></li>
												<li><i class="fa fa-star-o"></i></li>
												<li><i class="fa fa-star-o"></i></li>
											</ul>
										</div>
									</div>
								</div>
							</c:forEach>
							<!-- End Single Product -->
							<!-- Start Single Product -->

						</div>

						<div class="text-center">
							<ul class="wn__pagination">
								<c:if test="${pageMaker.prev}">
									<li><a
										href="chart${pageMaker.makeSearch(pageMaker.startPage - 1)}">&laquo;</a></li>
								</c:if>

								<c:forEach begin="${pageMaker.startPage}"
									end="${pageMaker.endPage}" var="idx">
									<li
										<c:out value="${pageMaker.cri.page == idx?'class=active':''}"/>>
										<a href="chart${pageMaker.makeSearch(idx)}">${idx}</a>
									</li>
								</c:forEach>

								<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
									<li><a
										href="chart${pageMaker.makeSearch(pageMaker.endPage + 1)}">&raquo;</a></li>
								</c:if>

							</ul>
						</div>
					</div>


					<div class="shop-grid tab-pane fade" id="nav-list" role="tabpanel">
						<div class="list__view__wrapper">
							<!-- Start Single Product -->
							<c:forEach items="${list}" var="BookVO">
								<div class="list__view">

									<div class="thumb">
										<a class="first__img" href="single-product.html"><img
											src="/resources/images/product/1.jpg" alt="product images"></a>
										<a class="second__img animation1" href="single-product.html"><img
											src="/resources/images/product/2.jpg" alt="product images"></a>
									</div>
									<div class="content">
										<h2>
											<a href="single-product.html">${BookVO.title}</a>
										</h2>
										<ul class="rating d-flex">
											<li class="on"><i class="fa fa-star-o"></i></li>
											<li class="on"><i class="fa fa-star-o"></i></li>
											<li class="on"><i class="fa fa-star-o"></i></li>
											<li class="on"><i class="fa fa-star-o"></i></li>
											<li><i class="fa fa-star-o"></i></li>
											<li><i class="fa fa-star-o"></i></li>
										</ul>
										<ul class="prize__box">
											<li>$111.00</li>
											<li class="old__prize">$220.00</li>
										</ul>
										<p>${BookVO.content}</p>
										<ul class="cart__action d-flex">
											<li class="cart"><a href="cart.html">Add to cart</a></li>
											<li class="wishlist"><a href="cart.html"></a></li>
											<li class="compare"><a href="cart.html"></a></li>
										</ul>

									</div>
								</div>
							</c:forEach>

							<!-- End Single Product -->
							<!-- Start Single Product -->

						</div>
						<div class="text-center">
							<ul class="wn__pagination">
								<c:if test="${pageMaker.prev}">
									<li><a
										href="chart${pageMaker.makeSearch(pageMaker.startPage - 1)}">&laquo;</a></li>
								</c:if>

								<c:forEach begin="${pageMaker.startPage}"
									end="${pageMaker.endPage}" var="idx">
									<li
										<c:out value="${pageMaker.cri.page == idx?'class=active':''}"/>>
										<a href="chart${pageMaker.makeSearch(idx)}">${idx}</a>
									</li>
								</c:forEach>

								<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
									<li><a
										href="chart${pageMaker.makeSearch(pageMaker.endPage + 1)}">&raquo;</a></li>
								</c:if>

							</ul>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
</div>
</div>
<!--  여기야 -->

<%@include file="../include/footer.jsp"%>
<script>
	
</script>
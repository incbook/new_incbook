<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>


<title>INCBOOK</title>
<%@include file="../include/header.jsp"%>
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
		
			<%@include file="chartCategories.jsp"%>

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
										href="newBookChart${pageMaker.makeSearch(pageMaker.startPage - 1)}">&laquo;</a></li>
								</c:if>

								<c:forEach begin="${pageMaker.startPage}"
									end="${pageMaker.endPage}" var="idx">
									<li
										<c:out value="${pageMaker.cri.page == idx?'class=active':''}"/>>
										<a href="newBookChart${pageMaker.makeSearch(idx)}">${idx}</a>
									</li>
								</c:forEach>

								<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
									<li><a
										href="newBookChart${pageMaker.makeSearch(pageMaker.endPage + 1)}">&raquo;</a></li>
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
										href="newBookChart${pageMaker.makeSearch(pageMaker.startPage - 1)}">&laquo;</a></li>
								</c:if>

								<c:forEach begin="${pageMaker.startPage}"
									end="${pageMaker.endPage}" var="idx">
									<li
										<c:out value="${pageMaker.cri.page == idx?'class=active':''}"/>>
										<a href="newBookChart${pageMaker.makeSearch(idx)}">${idx}</a>
									</li>
								</c:forEach>

								<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
									<li><a
										href="newBookChart${pageMaker.makeSearch(pageMaker.endPage + 1)}">&raquo;</a></li>
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
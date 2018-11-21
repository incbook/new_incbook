<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="../include/header.jsp"%>
<div style="margin:90px"></div>


<!-- Start Bradcaump area -->
<div class="ht__bradcaump__area bg-image--6">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="bradcaump__inner text-center">
					<h2 class="bradcaump-title">책은 곧 지식이고 삶이다.</h2>
					<nav class="bradcaump-content">
						<a class="breadcrumb_item" href="index.html">InCBook</a> <span
							class="brd-separetor">/</span> <span
							class="breadcrumb_item active">Chart</span>
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
		
			<div class="col-lg-3 col-12 order-2 order-lg-1 md-mt-40 sm-mt-40 categorySide">
			</div>

			<div class="col-lg-9 col-12 order-1 order-lg-2">
				<div class="row">
					<div class="col-lg-12">
						<div class="shop__list__wrapper d-flex flex-wrap flex-md-nowrap justify-content-between">
							<div class="shop__list nav justify-content-center" role="tablist">
								<a class="nav-item nav-link active" data-toggle="tab"
									href="#nav-grid" role="tab"> <i class="fa fa-th"></i>
								</a> <a class="nav-item nav-link" data-toggle="tab" href="#nav-list"
									role="tab"> <i class="fa fa-list"></i>
								</a>
							</div>
							<p>
								<strong>InC Book Top 100</strong>
							</p>
							<div class="orderby__wrapper">
								<span></span>
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
										<a class="first__img"
											href='/book/readPage${pageMaker.makeSearch(pageMaker.cri.page)}&id=${BookVO.id}&prePage=top'>
											<img src="/img/${BookVO.id}/${BookVO.image}"
											alt="product image" width=240 height=351>
										</a>
									</div>
									<div class="product__content content--center">
										<h4>
											<a href="single-product.html">${BookVO.title}</a>
										</h4>
										<ul class="prize d-flex">
											<li>${BookVO.genre}</li>
										</ul>

										<div class="action" quickId="${BookVO.id}" quickPrePage="top"
											page="${pageMaker.cri.page}">
											<div class="actions_inner">
												<ul class="add_to_links">
													<li><a data-toggle="modal" title="Quick View"
														class="quickview modal-view detail-link"
														href="#productmodal"> <i class="bi bi-search"></i>
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
							</c:forEach>
							<!-- End Single Product -->
							<!-- Start Single Product -->

						</div>

						<div class="text-center">
							<ul class="wn__pagination">
								<c:if test="${pageMaker.prev}">
									<li><a
										href="allTop100${pageMaker.makeSearch(pageMaker.startPage - 1)}">&laquo;</a></li>
								</c:if>

								<c:forEach begin="${pageMaker.startPage}"
									end="${pageMaker.endPage}" var="idx">
									<li
										<c:out value="${pageMaker.cri.page == idx?'class=active':''}"/>>
										<a href="allTop100${pageMaker.makeSearch(idx)}">${idx}</a>
									</li>
								</c:forEach>

								<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
									<li><a
										href="allTop100${pageMaker.makeSearch(pageMaker.endPage + 1)}">&raquo;</a></li>
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
										<a class="first__img"
											href="/book/readPage${pageMaker.makeSearch(pageMaker.cri.page)}&id=${BookVO.id}&prePage=top">
											<img src="/img/${BookVO.id}/${BookVO.image}"
											alt="product image" width=240 height=351>
										</a>
									</div>
									<div class="content">
										<h2>
											<a href="single-product.html">${BookVO.title}</a>
										</h2>
										<ul class="prize__box">
											<li>${BookVO.genre}</li>
										</ul>
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

										<p>${BookVO.content}</p>
										
									</div>
								</div>
							</c:forEach>

							<!-- End Single Product -->
							<!-- Start Single Product -->

						</div>
						<br>

						<div class="text-center">
							<ul class="wn__pagination">
								<c:if test="${pageMaker.prev}">
									<li><a
										href="allTop100${pageMaker.makeSearch(pageMaker.startPage - 1)}">&laquo;</a></li>
								</c:if>

								<c:forEach begin="${pageMaker.startPage}"
									end="${pageMaker.endPage}" var="idx">
									<li
										<c:out value="${pageMaker.cri.page == idx?'class=active':''}"/>>
										<a href="allTop100${pageMaker.makeSearch(idx)}">${idx}</a>
									</li>
								</c:forEach>

								<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
									<li><a
										href="allTop100${pageMaker.makeSearch(pageMaker.endPage + 1)}">&raquo;</a></li>
								</c:if>

							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>



<!-- //Footer Area -->
<!-- QUICKVIEW PRODUCT -->
<c:forEach items="${list}" var="BookVO">

	<div id="quickview-wrapper">
		<!-- Modal -->
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
							<!-- Start product images -->
							<div class="product-images">
								<div class="main-image images">
									<img alt="big images"
										src="/resources/images/product/big-img/1.jpg">
								</div>
							</div>
							<!-- end product images -->

							<div class="product-info">
								<h1>${BookVO.title}</h1>
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
											<li class="tumblr"><a href="#"
												class="tumblr social-icon"><i class="zmdi zmdi-tumblr"></i></a></li>
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
	</div>
</c:forEach>
<!-- END QUICKVIEW PRODUCT -->
<!-- //Main wrapper -->
<!--  여기야 -->

<!-- 선택된 카테고리 진하게 -->
<input type="hidden" id="categorySelected" value="all">

<%@include file="../include/footer.jsp"%>
<script src="/resources/js/custom/chartCategories.js"></script>

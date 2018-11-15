<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.incbook.project.domain.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="../include/header.jsp"%>

<form role="form">
	<input type="hidden" name='id' value="${findBookByID2.id}"> <input
		type="hidden" name='page' value="${cri.page}"> <input
		type="hidden" name='pagesize' value="${cri.pagesize}"> <input
		type="hidden" name='keyword' value="${cri.keyword}"> <input
		type="hidden" name='prePage' value="${prePage}">

</form>
<div class="ht__bradcaump__area bg-image--4">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="bradcaump__inner text-center">
					<h2 class="bradcaump-title">Shop Single</h2>
					<nav class="bradcaump-content">
						<a class="breadcrumb_item" href="index.html">Home</a> <span
							class="brd-separetor">/</span> <span
							class="breadcrumb_item active">Shop Single</span>
					</nav>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End Bradcaump area -->
<!-- Start main Content -->
<div class="maincontent bg--white pt--80 pb--55">
	<div class="container">
		<div class="row">
			<div class="col-lg-9 col-12">
				<div class="wn__single__product">
					<div class="row">
						<div class="col-lg-6 col-12">
							<div class="wn__fotorama__wrapper">
								<div class="fotorama wn__fotorama__action" data-nav="thumbs">
									<a href="1.jpg"><img
										src="/img/${findBookByID2.id}/${findBookByID2.image}"
										style="width: 450; height: 565;" alt=""></a>
								</div>
							</div>
						</div>
						<div class="col-lg-6 col-12">
							<div class="product__info__main">
								<h3>『 ${findBookByID2.title} 』</h3>
								<br> <br> <strong><label for="genre">
										장르<span style="color: red;"> * </span>
								</label> ${findBookByID2.genre}</strong> <br> <strong><label
									for="writer"> 저자<span style="color: blue;"> * </span></label>
									${findBookByID2.writer}</strong> <br> <strong><label
									for="publisher"> 출판사출판사<span style="color: green;">
											* </span></label> ${findBookByID2.publisher}</strong> <br> <strong><label
									for="regdate"> 등록일<span style="color: red;"> * </span></label>
									${findBookByID2.regdate}</strong> <br> <strong><label
									for="updateDate"> 수정일<span style="color: blue;">
											* </span></label> ${findBookByID2.updateDate}</strong> <br> <strong><label
									for="finalUpdateMemberId"> 최종수정자<span
										style="color: green;"> * </span></label> ${member.nickname}</strong>
								<!-- 별점 시작 -->
								<div class="product-reviews-summary d-flex">
									<ul class="rating-summary d-flex">
										<li><i class="zmdi zmdi-star-outline"></i></li>
										<li><i class="zmdi zmdi-star-outline"></i></li>
										<li><i class="zmdi zmdi-star-outline"></i></li>
										<li class="off"><i class="zmdi zmdi-star-outline"></i></li>
										<li class="off"><i class="zmdi zmdi-star-outline"></i></li>
									</ul>
								</div>
								<!-- 별점 끝-->
								<!-- <div class="price-box">
									<span>$52.00</span>
								</div> -->
								<br> <br>
								<div class="form_all">
									<div class="form__btn">
										<button type="button" id="modify" class="radius">수정</button>
										<c:if test="${prePage == 'top'}">
											<button type="button" id="top" class="radius">목록가기</button>
										</c:if>
										<c:if test="${prePage == 'new'}">
											<button type="button" id="new" class="radius">목록가기</button>
										</c:if>
										<c:if test="${prePage == 'genre'}">
											<button type="button" id="genre" class="radius">목록가기</button>
										</c:if>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="product__info__detailed">
					<div class="pro_details_nav nav justify-content-start"
						role="tablist">
						<a class="nav-item nav-link active" data-toggle="tab"
							href="#nav-details" role="tab">Details</a> <a
							class="nav-item nav-link" data-toggle="tab" href="#nav-review"
							role="tab">Reviews</a>
					</div>
					<div class="tab__container">
						<!-- Start Single Tab Content -->
						<div class="pro__tab_label tab-pane fade show active"
							id="nav-details" role="tabpanel">
							<div class="description__attribute">
								<p>${findBookByID2.content}</p>
							</div>
						</div>
						<!-- End Single Tab Content -->
						<!-- Start Single Tab Content -->
						<div class="pro__tab_label tab-pane fade" id="nav-review"
							role="tabpanel">
							<div class="review__attribute">
								<h1>Customer Reviews</h1>
								<h2>Hastech</h2>
								<div class="review__ratings__type d-flex">
									<div class="review-ratings">
										<div class="rating-summary d-flex">
											<span>Quality</span>
											<ul class="rating d-flex">
												<li><i class="zmdi zmdi-star"></i></li>
												<li><i class="zmdi zmdi-star"></i></li>
												<li><i class="zmdi zmdi-star"></i></li>
												<li class="off"><i class="zmdi zmdi-star"></i></li>
												<li class="off"><i class="zmdi zmdi-star"></i></li>
											</ul>
										</div>

										<div class="rating-summary d-flex">
											<span>Price</span>
											<ul class="rating d-flex">
												<li><i class="zmdi zmdi-star"></i></li>
												<li><i class="zmdi zmdi-star"></i></li>
												<li><i class="zmdi zmdi-star"></i></li>
												<li class="off"><i class="zmdi zmdi-star"></i></li>
												<li class="off"><i class="zmdi zmdi-star"></i></li>
											</ul>
										</div>
										<div class="rating-summary d-flex">
											<span>value</span>
											<ul class="rating d-flex">
												<li><i class="zmdi zmdi-star"></i></li>
												<li><i class="zmdi zmdi-star"></i></li>
												<li><i class="zmdi zmdi-star"></i></li>
												<li class="off"><i class="zmdi zmdi-star"></i></li>
												<li class="off"><i class="zmdi zmdi-star"></i></li>
											</ul>
										</div>
									</div>
									<div class="review-content">
										<p>Hastech</p>
										<p>Review by Hastech</p>
										<p>Posted on 11/6/2018</p>
									</div>
								</div>
							</div>
							<div class="review-fieldset">
								<h2>You're reviewing:</h2>
								<h3>Chaz Kangeroo Hoodie</h3>
								<div class="review-field-ratings">
									<div class="product-review-table">
										<div class="review-field-rating d-flex">
											<span>Quality</span>
											<ul class="rating d-flex">
												<li class="off"><i class="zmdi zmdi-star"></i></li>
												<li class="off"><i class="zmdi zmdi-star"></i></li>
												<li class="off"><i class="zmdi zmdi-star"></i></li>
												<li class="off"><i class="zmdi zmdi-star"></i></li>
												<li class="off"><i class="zmdi zmdi-star"></i></li>
											</ul>
										</div>
										<div class="review-field-rating d-flex">
											<span>Price</span>
											<ul class="rating d-flex">
												<li class="off"><i class="zmdi zmdi-star"></i></li>
												<li class="off"><i class="zmdi zmdi-star"></i></li>
												<li class="off"><i class="zmdi zmdi-star"></i></li>
												<li class="off"><i class="zmdi zmdi-star"></i></li>
												<li class="off"><i class="zmdi zmdi-star"></i></li>
											</ul>
										</div>
										<div class="review-field-rating d-flex">
											<span>Value</span>
											<ul class="rating d-flex">
												<li class="off"><i class="zmdi zmdi-star"></i></li>
												<li class="off"><i class="zmdi zmdi-star"></i></li>
												<li class="off"><i class="zmdi zmdi-star"></i></li>
												<li class="off"><i class="zmdi zmdi-star"></i></li>
												<li class="off"><i class="zmdi zmdi-star"></i></li>
											</ul>
										</div>
									</div>
								</div>
								<div class="review_form_field">
									<div class="input__box">
										<span>Nickname</span> <input id="nickname_field" type="text"
											name="nickname">
									</div>
									<div class="input__box">
										<span>Summary</span> <input id="summery_field" type="text"
											name="summery">
									</div>
									<div class="input__box">
										<span>Review</span>
										<textarea name="review"></textarea>
									</div>
									<div class="review-form-actions">
										<button>Submit Review</button>
									</div>
								</div>
							</div>
						</div>
						<!-- End Single Tab Content -->
					</div>
				</div>
				
				
				<section class="wn__bestseller__area bg--white pt--80  pb--30">
					<div class="container">
						<div class="row">
							<div class="col-lg-12">
								<div class="section__title text-center">
									<h2 class="title__be--2">
										대여 가능 <span class="color--theme">도서 목록</span>
									</h2>
									<p>There are many variations of passages of Lorem Ipsum
										available, but the majority have suffered lebmid alteration in
										some ledmid form</p>
								</div>
							</div>
						</div>
						<!-- ----------------------------------------------- -->
						<div class="tab__container mt--60">
							<!-- Start Single Tab Content -->
							<div class="row single__tab tab-pane fade show active" id="nav-all" role="tabpanel">
								<div class="product__indicator--4 arrows_style owl-carousel owl-theme">
									<c:forEach items="${ownList}" var="own" varStatus="status" begin="1">
									
										<c:if test="${status.index % 2 eq 1}">
											<c:out value="<div class="single__product">"/>
											<!-- Start Single Product -->
												<div class="col-lg-3 col-md-4 col-sm-6 col-12">
													<div class="product product__style--3">
														<div class="product__thumb">
															<a class="first__img" href="single-product.html"><img
																src="/resources/images/books/1.jpg" alt="product image"></a>
															<div class="hot__box">
																<span class="hot-label">BEST SALER</span>
															</div>
														</div>
														<div class="product__content content--center content--center">
															<h4>
																<a href="single-product.html">${own.state}</a>
															</h4>
															<ul class="prize d-flex">
																<li>$50.00</li>
																<li class="old_prize">$35.00</li>
															</ul>
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
												</div>
										<!-- Start Single Product -->
										</c:if>
										
										<c:if test="${status.index % 2 eq 0}">
											<div class="col-lg-3 col-md-4 col-sm-6 col-12">
												<div class="product product__style--3">
													<div class="product__thumb">
														<a class="first__img" href="single-product.html"><img
															src="/resources/images/books/1.jpg" alt="product image"></a>
														<div class="hot__box">
															<span class="hot-label">BEST SALER</span>
														</div>
													</div>
													<div
														class="product__content content--center content--center">
														<h4>
															<a href="single-product.html">Ghost4</a>
														</h4>
														<ul class="prize d-flex">
															<li>$50.00</li>
															<li class="old_prize">$35.00</li>
														</ul>
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
											</div>
											<c:out value="</div>"/>
										</c:if>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
				</section>

				<div class="wn__related__product pt--80 pb--50">
					<div class="section__title text-center">
						<h2 class="title__be--2">Related Products</h2>
					</div>
					<div class="row mt--60">
						<div class="productcategory__slide--2 arrows_style owl-carousel owl-theme">
							<c:forEach items="${randomBookList}" var="book" varStatus="status" begin="1">
								<!-- Start Single Product -->
								<div class="product product__style--3 col-lg-4 col-md-4 col-sm-6 col-12">
									<div class="product__thumb">
										<a class="first__img" href="single-product.html"><img
											src="/resources/images/books/1.jpg" alt="product image"></a>
										<a class="second__img animation1" href="single-product.html"><img
											src="/resources/images/books/2.jpg" alt="product image"></a>
										<div class="hot__box">
											<span class="hot-label">BEST SALLER</span>
										</div>
									</div>
									<div class="product__content content--center">
										<h4>
											<a href="single-product.html">${book.title}</a>
										</h4>
										<ul class="prize d-flex">
											<li>$35.00</li>
											<li class="old_prize">$35.00</li>
										</ul>
										<div class="action">
											<div class="actions_inner">
												<ul class="add_to_links">
													<li><a class="cart" href="cart.html"><i
															class="bi bi-shopping-bag4"></i></a></li>
													<li><a class="wishlist" href="wishlist.html"><i
															class="bi bi-shopping-cart-full"></i></a></li>
													<li><a class="compare" href="#"><i
															class="bi bi-heart-beat"></i></a></li>
													<li><a data-toggle="modal" title="Quick View"
														class="quickview modal-view detail-link"
														href="#productmodal"><i class="bi bi-search"></i></a></li>
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
						</div>
					</div>
				</div>















			</div>
			<div class="col-lg-3 col-12 md-mt-40 sm-mt-40">
				<div class="shop__sidebar">
					<aside class="wedget__categories poroduct--cat">
						<h3 class="wedget__title">Product Categories</h3>
						<ul>
							<li><a href="#">장르1 <span>(3)</span></a></li>
							<li><a href="#">장르2 <span>(4)</span></a></li>
							<li><a href="#">장르3 <span>(6)</span></a></li>
							<li><a href="#">장르4 <span>(7)</span></a></li>
							<li><a href="#">장르5 <span>(8)</span></a></li>
							<li><a href="#">장르6 <span>(9)</span></a></li>
							<li><a href="#">장르7 <span>(13)</span></a></li>
							<li><a href="#">장르8 <span>(20)</span></a></li>
							<li><a href="#">장르9 <span>(22)</span></a></li>
							<li><a href="#">장르10 <span>(13)</span></a></li>
						</ul>
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
		</div>
	</div>
<!-- End main Content -->

<!-- Start Search Popup -->
<div class="box-search-content search_active block-bg close__top">
	<form id="search_mini_form--2" class="minisearch" action="#">
		<div class="field__search">
			<input type="text" placeholder="Search entire store here...">
			<div class="action">
				<a href="#"><i class="zmdi zmdi-search"></i></a>
			</div>
		</div>
	</form>
	<div class="close__wrap">
		<span>close</span>
	</div>
</div>

<%@include file="../include/footer.jsp"%>

<script type="text/javascript">
	$(document).ready(function() {
		var formObj = $("[role]");
		console.log(formObj);
		$("#modify").on("click", function() {
			formObj.attr("action", "/book/modifyPage");
			formObj.attr("method", "get");
			formObj.submit();
		});

		$("#top").on("click", function() {
			formObj.attr("action", "/book/allTop100");
			formObj.attr("method", "get");
			formObj.submit();
		});

		$("#new").on("click", function() {
			formObj.attr("action", "/book/newBookChart");
			formObj.attr("method", "get");
			formObj.submit();
		});

		$("#genre").on("click", function() {
			formObj.attr("action", "/book/genreTop100");
			formObj.attr("method", "get");
			formObj.submit();
		});

	});
</script>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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

<%@include file="../include/header.jsp"%>

<!-- Start Shop Page -->
<section class="my_account_area pt--80 pb--55 bg--white">
	<div class="container">
		<div class="row">
			<%@include file="../include/includeSide.jsp"%>
			


			<div class="col-lg-9 col-12 order-1 order-lg-2">
					<div class="my__account__wrapper">
						<div class="cus_title">
							<p>
								<strong>내가 등록한 도서</strong>
							</p>
						</div>
				

					<div class="shop-grid tab-pane fade" id="nav-list" role="tabpanel" style="display:inline;">
						<div class="list__view__wrapper book_pd_t20">

							<!-- Start Single Product -->
							<c:forEach items="${myOwnMapList}" var="myOwn">
								<div class="list__view cus_line">
									<div class="thumb">
										<a class="first__img" href="/book/ownReadPage${pageMaker.makeSearch(pageMaker.cri.page)}&id=${myOwn.bookVO.id}"><img
											src="/img/${myOwn.bookVO.id}/${myOwn.bookVO.image}" alt="product image"
											width=240 height=351></a>
									</div>
									<div class="content">
										<h2>
											<a href="single-product.html">${myOwn.bookVO.title}</a>
										</h2>
										<ul class="rating d-flex">
												<c:if test="${myOwn.bookVO.averageScore==5}">
													<li class="on"><i class="fa fa-star-o"></i></li>
													<li class="on"><i class="fa fa-star-o"></i></li>
													<li class="on"><i class="fa fa-star-o"></i></li>
													<li class="on"><i class="fa fa-star-o"></i></li>
													<li class="on"><i class="fa fa-star-o"></i></li>
												</c:if>
												<c:if test="${myOwn.bookVO.averageScore==4}">
													<li class="on"><i class="fa fa-star-o"></i></li>
													<li class="on"><i class="fa fa-star-o"></i></li>
													<li class="on"><i class="fa fa-star-o"></i></li>
													<li class="on"><i class="fa fa-star-o"></i></li>
													<li><i class="fa fa-star-o"></i></li>
												</c:if>
												<c:if test="${myOwn.bookVO.averageScore==3}">
													<li class="on"><i class="fa fa-star-o"></i></li>
													<li class="on"><i class="fa fa-star-o"></i></li>
													<li class="on"><i class="fa fa-star-o"></i></li>
													<li><i class="fa fa-star-o"></i></li>
													<li><i class="fa fa-star-o"></i></li>
												</c:if>
												<c:if test="${myOwn.bookVO.averageScore==2}">
													<li class="on"><i class="fa fa-star-o"></i></li>
													<li class="on"><i class="fa fa-star-o"></i></li>
													<li><i class="fa fa-star-o"></i></li>
													<li><i class="fa fa-star-o"></i></li>
													<li><i class="fa fa-star-o"></i></li>
												</c:if>
												<c:if test="${myOwn.bookVO.averageScore==1}">
													<li class="on"><i class="fa fa-star-o"></i></li>
													<li><i class="fa fa-star-o"></i></li>
													<li><i class="fa fa-star-o"></i></li>
													<li><i class="fa fa-star-o"></i></li>
													<li><i class="fa fa-star-o"></i></li>
												</c:if>
												<c:if test="${myOwn.bookVO.averageScore==0}">
													<li><i class="fa fa-star-o"></i></li>
													<li><i class="fa fa-star-o"></i></li>
													<li><i class="fa fa-star-o"></i></li>
													<li><i class="fa fa-star-o"></i></li>
													<li><i class="fa fa-star-o"></i></li>
												</c:if>
										</ul>
										<ul class="item_inLine">
											<li>도서 상태 :&nbsp;</li>
											<li class="">${myOwn.ownVO.state}</li>
										</ul>
										<ul class="item_inLine">
											<li>대여가능 여부 : &nbsp;</li>
											<li class="">${myOwn.ownVO.isRent}</li>
										</ul>
										<ul class="item_inLine">
											<li>판매가능 여부 :&nbsp;</li>
											<li class="">${myOwn.ownVO.isSell}</li>
										</ul>
										<ul class="item_inLine">
											<li>일당 대여료 :&nbsp;</li>
											<li class="">${myOwn.ownVO.fee} 원</li>
										</ul>
										<ul class="item_inLine">
											<li>대여기간 :&nbsp;</li>
											<li class="">${myOwn.ownVO.selectPeriod} 일</li>
										</ul>
										<ul class="item_inLine">
											<li>거래 선호지역 :&nbsp;</li>
											<li class="">${myOwn.ownVO.rentLocation}</li>
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
										href="/own/myOwnList${pageMaker.makeSearch(pageMaker.startPage - 1)}">&laquo;</a></li>
								</c:if>

								<c:forEach begin="${pageMaker.startPage}"
									end="${pageMaker.endPage}" var="idx">
									<li
										<c:out value="${pageMaker.cri.page == idx?'class=active':''}"/>>
										<a href="/own/myOwnList${pageMaker.makeSearch(idx)}">${idx}</a>
									</li>
								</c:forEach>

								<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
									<li><a
										href="/own/myOwnList${pageMaker.makeSearch(pageMaker.endPage + 1)}">&raquo;</a></li>
								</c:if>

							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>



<!-- //Footer Area -->

<!-- //Main wrapper -->
<!--  여기야 -->

<%@include file="../include/footer.jsp"%>


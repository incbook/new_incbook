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

			<div class="col-lg-3 col-3">
				<h3 class="wedget__title">My Page</h3>
				<ul>
					<li><a href='http://localhost:8080/member/memberDetail';">회원정보수정</a></li>
					<li><a href="http://localhost:8080/payment/chargeHistory">포인트 충전 내역</a></li>
					<li><a href="http://localhost:8080/own/myOwnList">내가 등록한 도서</a></li>
					<li><a href="http://localhost:8080/trade/lendersPage">대여자 페이지</a></li>
					<li>회원 탈퇴</li>
					<li>회원 탈퇴</li>
					<li>회원 탈퇴</li>
					<li>회원 탈퇴</li>
					<li>회원 탈퇴</li>
					<li>회원 탈퇴</li>
				</ul>
			</div>


			<div class="col-lg-9 col-9 order-1 order-lg-2">
				<div class="row">
					<div class="shop__list__wrapper d-flex flex-wrap flex-md-nowrap justify-content-between">
						<div class="shop__list nav justify-content-center" role="tablist">
						</div>
						<p>
							<strong>내가 등록한 도서</strong>
						</p>
						<div class="orderby__wrapper">
							<span></span>
						</div>
					</div>
				</div>

					<div class="shop-grid tab-pane fade" id="nav-list" role="tabpanel" style="display:inline;">
						<div class="list__view__wrapper">

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


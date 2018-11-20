<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
								src="/img/${BookVO.id}/${BookVO.image}" width=420 height=614>
						</div>
					</div>
					<!-- end product images -->
					<div class="product-info">
						<!--================================================================= -->
						<!--================================================================= -->
						<h1>『${BookVO.title}』</h1>
						<br>
						<strong><div>장르<span style="color:red;"> * </span>${BookVO.genre}</div></strong>
						<strong><div>저자<span style="color:blue;"> * </span>${BookVO.writer}</div></strong>
						<strong><div>출판사<span style="color:green;"> * </span>${BookVO.publisher}</div></strong>
						<br>
						<div>${BookVO.content}</div>

						<div class="addtocart-btn">
							<a
								href="/book/readPage?id=${BookVO.id}&prePage=${quickPrePage}">이
								도서 상세정보 보기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

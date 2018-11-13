<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../include/header.jsp"%>
	

<section class="wn__checkout__area section-padding--lg bg__white">
	<div class="container">
		<div class="row">
			<div class="col-lg-4"></div>
			<div class="col-lg-4 col-12">
				<div class="customer_details">
					<h3 style="margin-top: 30px;" align="center">Your order</h3>
    				<div class="customar__field" style="margin-bottom:10px; border: 1px solid #ddd; border-radius: 1em; padding: 20px;">
    					<div class="input_box">
    						<h2>쫄보의 여행${book.title}</h2>
    					</div>
    					<div class="input_box">
    						<label>소유자 <span>*</span><strong> 소유자1</strong></label>
    					</div>
   						<div class="input_box">
   							<label>거래위치 <span>*</span> 강남역 12번 출구</label>
   							<input type="text" placeholder="세부 위치를 입력하세요">
   						</div>
   						<div class="input_box">
   							<label>거래시간 <span>*</span></label>
   							오후 3시
   							<input type="text" placeholder="시간을 입력하세요">
   						</div>
   						<div class="input_box">
   							<label>대여기간 <span>*</span><strong> 15일</strong></label>
   						</div>
   						<div class="input_box">
   							<label>일당 대여료 <span>*</span> 100원</label>
   						</div>
   						<div class="wn__order__box">
	      					<ul class="total__amount">
	      						<li>Total <span style="color: #E59285; font-size: 21px;">1500원</span></li><!-- #ff2f37 -->
	      					</ul>
	      				</div>
	      				
    				</div>
	      				<div class="button_form">
							<button class="trade_ok" type="button">결제하기</button>
						</div>
				</div>
			</div>
		</div>
	</div>
</section>	
	
	
	
<%@include file="../include/footer.jsp"%>
<script>
	$(function() {
		$(".chat_start").on("click",function() {
			alert("채팅시작");
		});
	});
	
	$(function() {
		$(".trade_start").on("click",function() {
			alert("소유자와 채팅은 하셨나요?");
		});
	});
</script>


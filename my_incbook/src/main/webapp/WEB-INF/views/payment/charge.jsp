<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>

	<section class="my_account_area pt--80 bg--white">
		<div class="container">
			<div class="row">
				<div class="col-lg-2">
				</div>
				<div class="col-lg-8 col-12">
					<div class="my__account__wrapper">
					
						<h3 class="account__title" align=center style="color: #8bbdee;">
							<img src="/resources/images/icon2.png" style="width:50px;">
							포인트충전
							<img src="/resources/images/icon2.png" style="width:50px;">
						</h3>
						<div class="account__form">
							<div class="form__btn" align=center>
								<button id="pay_btn" class="pick_money" value="1000">1000원</button>
								<button id="pay_btn" class="pick_money" value="2000">2000원</button>
								<button id="pay_btn" class="pick_money" value="5000">5000원</button>
								<button id="pay_btn" class="pick_money" value="10000">10000원</button>
								<button id="pay_btn" class="pick_money" value="50000">50000원</button>
							</div>
						</div>					
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<section class="my_account_area bg--white" style="margin-bottom: 50px;">
		<div class="container">
			<div class="row">	
				<div class="col-lg-2">
				</div>
	          	<div class="col-lg-8 offset-lg-12">
	              	<div class="cartbox__total__area">
	                  	<div class="cartbox-total d-flex justify-content-between">
	                  	 	<ul class="cart__total__list">
	                     	   	<li>금액</li>
	                        	<li>충전되는 포인트</li>
	                   		</ul>
	                      	<ul class="cart__total__tk" style="text-align: right;">
	                          	<li id="pay1"></li>
	                          	<li id="point" value=""></li>
	                      	</ul>
	                  	</div>
	                  	<div class="cart__total__amount">
	                      	<span>결제금액</span>
	                      	<span id="pay_total" style="font-weight: bold;" value=""></span>
	                  	</div>
	              	</div>
				</div>
			</div>
		</div>
	</section>
          
	<div class="form__btn" style="text-align: center; margin-bottom: 50px;">
		<input type="hidden" id="memberId" value="${login.id}">
		<input type="submit" value="리셋하기" class="btn btn-danger" id="btn_reset">&emsp;&emsp;
		<input type="submit" value="결제하기" class="btn btn-default" id="btn_topay">
	</div>
	
        
<%@include file="../include/footer.jsp"%>
	<script type="text/javascript">
		/* 가격 선택 -> 금액 나온다 */
		$(function(){ 
			$(".pick_money").click(function() {
				var pick_money = $(this).attr("value");
				var check = confirm(pick_money + "원" + " 충전하시겠습니까?");
				
				var point = Math.floor(pick_money * 10);
				var pay_total = Math.floor(pick_money * 1.1);
					if(check){
						$("#pay1").text(pick_money + "원");
					    $("#point").text(point + "pt");
					    $("#point").attr("value", point);
					    $("#pay_total").text(Math.floor(pick_money * 1.1) + "원(VAT)");
					    $("#pay_total").attr("value", pay_total);
					} else {
							$("#pay1").empty();
					    	$("#point").empty();
					    	$("#point").attr("value", "");
					    	$("#pay_total").empty();
					    	$("#pay_total").attr("value", "");
					}
			});
		});
		
		/* 가격 선택 후 리셋 */
		$(function(){
		    $("#btn_reset").click(function(){
		    	$("#pay1").empty();
		    	$("#point").empty();
		    	$("#point").attr("value", "");
		    	$("#pay_total").empty();
		    	$("#pay_total").attr("value", "");
		    });
		});
		
		/* 가격 선택 후 결제 */
		$(function(){
		    $("#btn_topay").click(function() {
		    	var pay_total = $("#pay_total").attr("value");
		    	var point = $("#point").attr("value");
		    	var memberId = $("#memberId").val();
		    	if(pay_total == "") {
	    			alert('금액을 선택해주세요');	    		
		    	} else {
					window.open("/payment/paymentWindow?paymentPrice="+pay_total+"&point="+point+"&memberId="+memberId, "_blank", 
							"toolbar=yes,scrollbars=yes,resizable=yes,top=300,left=300,width=500,height=500");
		    	}
		    });
		});
	</script>
	
<%@include file="../include/footer.jsp"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
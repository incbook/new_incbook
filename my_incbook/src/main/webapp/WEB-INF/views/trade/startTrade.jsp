<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../include/header.jsp"%>
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />	

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
   							<label>거래시간 <span>*</span>
   							<input type="text" name="START_TIME" id="START_TIME" value="" maxlength="10"  class="setDatePicker"></label>
   						</div>
   						<div class="input_box">
   							<label>거래기간 <span>*</span></label>
   							<input type="text" name="daterange" value="01/01/2018 - 01/15/2018" />
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

	$(function() {
		$('input[name="daterange"]').daterangepicker({
			opens: 'left'
		}, function(start, end, label) {
			console.log("A new date selection was made: " + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
		});
	});
	
	$(function() {
        // INPUT 박스에 들어간 ID값을 적어준다.
        $("#START_TIME,#END_TIME").timepicker({
            'minTime': '00:00am', // 조회하고자 할 시작 시간 ( 09시 부터 선택 가능하다. )
            'timeFormat': 'H:i',
            'step': 30 // 30분 단위로 지정. ( 10을 넣으면 10분 단위 )
    	});
    
	    $(window).scroll(function(){
	        $(".ui-timepicker-wrapper").hide();
	    });
    });


	
</script>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>결제창 입니다!</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<style>
	.papa {
		text-align: center;
		color: #8bbdee;
		height: 500px;
	}
	.pa_title {
		background-color: #8bbdee;
		color: #fff;
		font-size: 40px;
	}
	.papa_pa {
		font-size: 26px;
		line-height: 60px;
		margin-top: 28px;
		border-bottom: 2px solid #8bbdee;
	}
	.papa_pa2 {
		padding: 20px 0;
		font-size: 26px;
		margin-bottom: 30px;
		background-color: #8bbdee;
		color: #fff;
	}
	.sososo {
		border: 3px solid #8bbdee;
		border-radius: 30px;
		margin: 35px;
	}
	.so11 {
		margin-bottom: 50px;
	}
</style>

</head>
<body>

	<section class="papa" style="margin: 40px 20px; border: 4px solid #8bbdee;">
		<p class="pa_title">바로결제</p>
		<div class="sososo">
			<div class="papa_pa">
				<p>우리은행</p>
				<p>1000-123-456789</p>
			</div>	
			<div class="papa_pa2">
	        	<span>결제금액</span>&nbsp;
	        	<span id="pay_total" style="font-weight: bold;">
	        		${payInfo.paymentPrice}원
	        	</span>
	        </div>
	        <div class="so11">
		        <input type="submit" value="취소" class="btn btn-danger" onClick="window.close()">&emsp;
		        <input type="submit" value="확인" class="btn btn-primary" id="btn_ok" onclick="btn_ok()">
	        </div>
        </div>
  		<input type="hidden" id="point" value="${payInfo.point}">
  		<input type="hidden" id="payTotal" value="${payInfo.paymentPrice}">
   		<input type="hidden" id="memberId" value="${payInfo.memberId}">
   		<input type="hidden" id="type" value="충전">
	</section>
	
	
<script type="text/javascript">
	function btn_ok() {
		alert("결제가 완료되었습니다");
    	var memberId = $("#memberId").val();
    	var payTotal = $("#payTotal").val();
    	var point = $("#point").val();
    	var type = $("#type").val();
		top.opener.location="/payment/insertPoint?memberId="+memberId+"&paymentPrice="+payTotal+"&point="+point+"&type="+type;
		window.close();
	}
</script>
</body>
</html>
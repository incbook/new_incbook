<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>결제창 입니다!</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<style>
	body {
		background-image: url("/images/bg1.jpg");
		background-size: 480px 600px;
	}
	.papa {
		/* background-color: #fff; 
		opacity:0.5!important; */
		text-align: center;
		color: #fff;
		height: 500px;
		padding-top: 50px;
	}
	.pa_title {
		font-size: 40px;
		padding: 30px 0;
	}
	.papa_pa {
		padding: 40px 0;
		border: 3px solid #fff;
		font-size: 26px;
		line-height: 60px;
	}
	.papa_pa2 {
		padding: 20px 0;
		font-size: 26px;
		line-height: 60px;
	}
</style>

</head>
<body>

	<section class="papa">
		<p class="pa_title">계좌 입금</p>
		<div class="papa_pa">
			<p>우리은행 </p>
			<p>1002-556-273739</p>
		</div>	
		<div class="papa_pa2">
        	<span>결제금액</span>&nbsp;
        	<span id="pay_total" style="font-weight: bold;">
        		${pay_total}원
        	</span>
        </div>
        <input type="submit" value="취소" class="btn btn-danger" onClick="window.close()">&emsp;
        <input type="submit" value="확인" class="btn btn-primary" id="btn_ok" onclick="btn_ok()">
	</section>
	
	
<script type="text/javascript">
	function btn_ok() {
		alert("결제가 완료되었습니다");
		top.opener.location="/payment/chargeHistory";
		window.close();
	}
</script>
</body>
</html>
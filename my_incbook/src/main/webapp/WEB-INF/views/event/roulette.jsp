<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<script type="text/plain"
	src="https://raw.githubusercontent.com/wilq32/jqueryrotate/master/jQueryRotate.js"></script>
<script type="text/javascript"
	src="http://cdn.sobekrepository.org/includes/jquery-rotate/2.2/jquery-rotate.min.js"></script>

<style>
/* #image {
	margin: 50px 50px;
	z-index: 10;
} */

/* #n_id {
	position: absolute;
	left: 286px;
	top: 75px;
	z-index: 20;
} */
.roulePan {
	margin: 0px;
}

.center {
	display: block;
	margin-left: auto;
	margin-right: auto;
}

.sa1 {
	margin-top: 30px;
}

.rouletteboard {
	width: 80%;
}

.cen_btn {
	display: block;
	margin: 20px auto;
}

.ssam {
	margin-top: 50px;
	border: none !important;
}

.start_btn_center {
	text-align: center;
}
</style>
<body>

	<section class="my_account_area pt--80 pb--55 bg--white">
		<div class="container">
			<div class="row">
				<div class="col-lg-3"></div>
				<div class="col-lg-6 col-12">
					<div class="my__account__wrapper">
						<div class="cus_title title_size">
							<p>
								<strong>* 룰렛 돌려서 포인트 받아가세요 *</strong>
							</p>
						</div>
						<div class="roulePan">
							<img src="/img/2/niddle.png" id="n_id" class="center sa1">
							<img src="/img/2/그림1.png" id="image" class="center rouletteboard">
						</div>

						<div class="form_all ssam">
							<div class="form__btn start_btn_center">
								<button type="button" id="start_btn" class="radius">시작</button>
							</div>
						</div>
						
						<div id="result_id" style="display:none"></div>
						<div id="result_id2" style="display:none"></div>
						<div id="result_id3" style="display:none"></div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<script>
		window.onload = function() {

			var pArr = [ "1000", "500", "100", "10", "0", "20000", "10000",
					"5000", "3000", "2000" ];

			$('#start_btn').click(function() {
				rotation();
			});

			function rotation() {
				$("#image").rotate({
					angle : 0,
					animateTo : 360 * 5 + randomize(0, 360),
					center : [ "50%", "50%" ],
					easing : $.easing.easeInOutElastic,
					callback : function() {
						var n = $(this).getRotateAngle();
						endAnimate(n);
					},
					duration : 5000
				});
			}

			var loginId = '${login.id}';
			function endAnimate($n) {
				var n = $n;
				$('#result_id').html("<p>움직인각도:" + n + "</p>");
				var real_angle = n % 360 + 18;
				var part = Math.floor(real_angle / 36);

				$('#result_id2').html("<p>상품범위:" + part + "</p>");

				if (part < 1) {
					$('#result_id3').html(pArr[0]);
					pointPost();
					return;
				}

				if (part >= 10) {
					$('#result_id3').html(pArr[pArr.length - 1]);
					pointPost();

					return;
				}

				$('#result_id3').html(pArr[part]);
				pointPost();

			}

			function pointPost() {
				$.ajax({
					url : "/event/roulette",
					data : {
						"loginId" : loginId,
						"p" : $('#result_id3').html()
					},
					type : 'POST'
				});
				if ($('#result_id3').html()==0) {
				alert("아쉽지만 다음 기회에 ..");

				} else {
				alert("축하합니다. " + $('#result_id3').html() + "포인트 당첨~!");

				}
			}

			function randomize($min, $max) {
				return Math.floor(Math.random() * ($max - $min + 1)) + $min;
			}
		};
	</script>
</body>
</html>

<%@include file="../include/footer.jsp"%>


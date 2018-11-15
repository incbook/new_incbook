<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script src="/resources/js/vendor/jquery-3.2.1.min.js"></script>
<script>
	$(function() {
		$(".gg li a").on("click", function() {
			var form = $("#formSelectGenre");
			var selectGenre = $(this).html();
			$("#selectGenre").val(selectGenre);
			form.submit();
		});
	});
</script>
<title>Insert title here</title>
</head>
<body>
	<div class="col-lg-3 col-12 order-2 order-lg-1 md-mt-40 sm-mt-40">
		<div class="shop__sidebar">
			<aside class="wedget__categories poroduct--cat">
				<h3 class="wedget__title">TOP-100</h3>
				<div class="" style="background-color: white;">
					<a href="/book/allTop100">  InC Book Top 100</a><br>
					<a href="/book/allTop100">  급상승 Book</a><br>
					<a href="/book/newBookChart">  신간 도서</a>
				</div>
				<br>
				<h3 class="wedget__title">장르별 TOP-100</h3>
				<!--  여기야 -->

				<div class="hover1" style="background-color: white;">  국내도서</div>
				<div id="list1" class="hover1" style="width: 836px;">
					<div
						style="border: 1px; background-color: white; position: absolute; float: right; z-index: 5; left: 200px; min-width: 600px; top: 30px;"
						class="gr03">
						<form action="/book/genreTop100" id="formSelectGenre">
							<input type="hidden" name="keyword" id="selectGenre">
						</form>
						<ul class="gg">
							<li><a href="#">유아</a></li>
							<li><a href="#">어린이</a></li>
							<li><a href="#">전집/중고전집</a></li>
							<li><a href="#">청소년</a></li>
							<li><a href="#">좋은부모</a></li>
							<li><a href="#">초등학교참고서</a></li>
							<li><a href="#">중학교참고서</a></li>
							<li><a href="#">고등학교참고서</a></li>
							<li><a href="#">여행</a></li>
							<li><a href="#">가정/요리/뷰티</a></li>
							<li><a href="#">건강/취미/레저</a></li>
							<li><a href="#">사전/기타</a></li>
							<li><a href="#">잡지</a></li>
							<li><a href="#">만화</a></li>
							<li><a href="#">고전</a></li>
							<li><a href="#">소설/시/희곡</a></li>
							<li><a href="#">장르소설</a></li>
							<li><a href="#">에세이</a></li>
							<li><a href="#">인문학</a></li>
							<li><a href="#">사회과학</a></li>
							<li><a href="#">역사</a></li>
							<li><a href="#">과학</a></li>
							<li><a href="#">예술/대중문화</a></li>
							<li><a href="#">종교/역학</a></li>
							<li><a href="#">경제경영</a></li>
							<li><a href="#">자기계발</a></li>
							<li><a href="#">외국어</a></li>
							<li><a href="#">컴퓨터/모바일</a></li>
							<li><a href="#">대학교재</a></li>
							<li><a href="#">수험서/자격증</a></li>
							<li><a href="#">공무원 수험서</a></li>

						</ul>

					</div>
				</div>

				<div class="hover2" style="background-color: white;">  외국도서</div>
				<div id="list2" class="hover2" style="width: 836px;">
					<div
						style="border: 1px; background-color: white; position: absolute; float: right; z-index: 5; left: 200px; min-width: 600px; top: 30px;"
						class="gr03">

						<ul class="gg">
							<li><a href="#">영미도서(외)</a></li>
							<li><a href="#">소설/시/희곡(외)</a></li>
							<li><a href="#">ELT/어학/사전(외)</a></li>
							<li><a href="#">인문/사회(외)</a></li>
							<li><a href="#">경제경영(외)</a></li>
							<li><a href="#">자기계발(외)</a></li>
							<li><a href="#">자연과학(외)</a></li>
							<li><a href="#">컴퓨터(외)</a></li>
							<li><a href="#">예술/대중문화(외)</a></li>
							<li><a href="#">가정/원예/인테리어(외)</a></li>
							<li><a href="#">공예/취미/수집(외)</a></li>
							<li><a href="#">여행(외)</a></li>
							<li><a href="#">건강/스포츠(외)</a></li>
							<li><a href="#">청소년(외)</a></li>
							<li><a href="#">해외잡지(외)</a></li>
							<li><a href="#">일본도서(외)</a></li>
							<li><a href="#">잡지(외)</a></li>
							<li><a href="#">코믹(외)</a></li>
							<li><a href="#">문학(외)</a></li>
							<li><a href="#">실용/취미/생활(외)</a></li>
							<li><a href="#">애니메이션 굿즈(외)</a></li>
							<li><a href="#">중국도서(외)</a></li>
							<li><a href="#">소설(외)</a></li>
							<li><a href="#">중국어 교재(외)</a></li>
							<li><a href="#">어린이(외)</a></li>
							<li><a href="#">캐릭터(외)</a></li>
							<li><a href="#">그림책(외)</a></li>
							<li><a href="#">리더스(외)</a></li>
							<li><a href="#">챕터북(외)</a></li>
							<li><a href="#">동화책(외)</a></li>
							<li><a href="#">오디오북(외)</a></li>
							<li><a href="#">어린이사전(외)</a></li>
							<li><a href="#">개념학습(외)</a></li>
							<li><a href="#">코스북(외)</a></li>
							<li><a href="#">영어학습(외)</a></li>
							<li><a href="#">교과학습(외)</a></li>
							<li><a href="#">미국교과서(외)</a></li>
							<li><a href="#">수상작(외)</a></li>
							<li><a href="#">제2외국어/이중언어(외)</a></li>
							<li><a href="#">기타 언어권(외)</a></li>
							<li><a href="#">프랑스 도서(외)</a></li>
							<li><a href="#">독일 도서(외)</a></li>
							<li><a href="#">스페인 도서(외)</a></li>
							<li><a href="#">베트남 도서(외)</a></li>
							<li><a href="#">기타 도서(외)</a></li>
						</ul>

					</div>
				</div>
				<br>

				<h3 class="wedget__title">개인화 맞춤-도서</h3>
				<div class="newBook" style="background-color: white;">
					<a href="/personalize/personalize">개인화 맞춤-도서</a>
				</div>
			</aside>

			<h3 class="wedget__title">Advertising</h3>
			<aside class="wedget__categories sidebar--banner">
				<img src="/img/1/a.jpg" alt="banner images">
			</aside>
		</div>
	</div>
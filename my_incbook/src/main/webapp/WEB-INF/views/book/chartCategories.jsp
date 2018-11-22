<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="/resources/js/vendor/jquery-3.2.1.min.js"></script>
<script>
	$(function() {
		$(".gg li a").on("click", function() {
			var form = $("#formSelectGenre");
			var selectGenre = $(this).html();
			$("#selectGenre").val(selectGenre);
			form.submit();
		});
		
		$('#list1').hide();
		$('.hover1').mouseenter(function() {
			$('#list1').show();
		});
		$('.hover1').mouseleave(function() {
			$('.hover1').mouseleave(function() {
				$('#list1').hide();
			});
		});
		$('#list2').hide();
		$('.hover2').mouseenter(function() {
			$('#list2').show();
		});
		$('.hover2').mouseleave(function() {
			$('.hover2').mouseleave(function() {
				$('#list2').hide();
			});
		});
		
		var categories = $(".chartCategory");
		var categorySelected = $("#categorySelected").val();
		var choosedGenre = $("#choosedGenre").val();
		
		/*폼에 빈칸이 있는지 확인*/
		for (var i = 0; i < categories.length; i++) {
			if (categories.eq(i).attr("chartCategoryType") == categorySelected) {
				if (categories.eq(i).attr("chartCategoryType") == 'genre') {
					if( choosedGenre.indexOf('(외)') != -1 && categories.eq(i).attr("location") == '외국') {
						selectedBoardChangeStyle(categories.eq(i));
					} else if (choosedGenre.indexOf('(외)') == -1 && categories.eq(i).attr("location") == '국내') {
						selectedBoardChangeStyle(categories.eq(i));
					}
				} else {
					selectedBoardChangeStyle(categories.eq(i));
				}
			}
		}
		
		var gg = $(".gg li a");
		
		for (var i = 0; i < gg.length; i++) {
			if (gg.eq(i).html() == choosedGenre) {
				selectedBoardChangeStyle(gg.eq(i));
			}
		}

		function selectedBoardChangeStyle(selectedBoard) {
			selectedBoard.css('color', '#e59285');
			selectedBoard.css('font-weigh', 'bold');
			selectedBoard.css('font-size', '20px');
		}
	});
</script>
<title>Insert title here</title>
</head>
<body>
	
		<div class="shop__sidebar">
			<aside class="wedget__categories poroduct--cat">
				<h3 class="wedget__title ss">TOP-100</h3>
				<div class="" style="background-color: white;">
					<a class="chartCategory" chartCategoryType="all" href="/book/allTop100"> InC Book Top 100</a>
				</div>
				<!--  여기야 -->

				<div class="hover1 chartCategory" chartCategoryType="genre" location="국내" style="background-color: white;"> 장르 Top 100 (국내)</div>
				<div id="list1" class="hover1" style="width: 836px;">
					<div
						style="border:3px solid #E59285; background-color: white; position: absolute; float: right; z-index: 5; left: 200px; min-width: 600px; top: 30px;"
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

				<div class="hover2 chartCategory" chartCategoryType="genre" location="외국" style="background-color: white;"> 장르 Top 100 (외국)</div>
				<div id="list2" class="hover2" style="width: 836px;">
					<div
						style="border:3px solid #E59285; background-color: white; position: absolute; float: right; z-index: 5; left: 200px; min-width: 600px; top: 30px;"
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
				<h3 class="wedget__title ss">NEW-100</h3>
				<div class="newBook">
					<a class="chartCategory" chartCategoryType="new" href="/book/newBookChart"> 신간 도서</a><br><br>
				</div>
				<c:if test="${login ne null}">
					<h3 class="wedget__title ss">개인화 맞춤-도서</h3>
					<div class="personalize" style="background-color: white;">
						<a class="chartCategory" chartCategoryType="personal" href="/personalize/personalize">개인화 맞춤-도서</a>
					</div>
				</c:if>
			</aside>

			<h3 class="wedget__title ss">Advertising</h3>
			<aside class="wedget__categories sidebar--banner">
				<c:if test="${advertBook eq null}">
				 <img
							src="/resources/images/others/banner_left3.jpg"
							alt="banner images" >
				</c:if>
				<c:if test="${advertBook ne null}">
				<a href="/book/readPage?id=${advertBook.id}&prePage=personal">
					<img src="/img/${advertBook.id}/${advertBook.image}" alt="banner images" >
				</a>
				</c:if>
			</aside>
		</div>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../include/header.jsp"%>

<section class="my_account_area pt--80 pb--55 bg--white">
	<div class="container">
		<div class="row">
			<div class="col-lg-2"></div>
				<div class="col-lg-8 col-12">
					<div class="my__account__wrapper">
						<div class="cus_title title_size">
							<p>
								<strong>도서 상세정보 입력</strong>
							</p>
						</div>

					<form role="form" method="post"  enctype="multipart/form-data" class="validationForm">
						<div class="account__form">
							<div class="input__box  sign__up__form">
								<label for="title" class="right1">제　목 <span>*</span></label> <input type="text"
									id="title" name="title" validationText="제목" class="input_width">
							</div>
							<%
								String[] koreagenre = {"유아", "어린이", "전집/중고전집", "청소년", "좋은부모", "초등학교참고서", "중학교참고서", "고등학교참고서", "여행",
										"가정/요리/뷰티", "건강/취미/레저", "사전/기타", "잡지", "만화", "고전", "소설/시/희곡", "장르소설", "에세이", "인문학", "사회과학", "역사",
										"과학", "예술/대중문화", "종교/역학", "경제경영", "자기계발", "외국어", "컴퓨터/모바일", "대학교재", "수험서/자격증", "공무원수험서"};
								String[] foreigngenre = {"영미도서(외)", "소설/시/희곡(외)", "ELT/어학/사전(외)", "인문/사회(외)", "경제경영(외)", "자기계발(외)", "자연과학(외)", "컴퓨터(외)", "예술/대중문화(외)",
										"가정/원예/인테리어(외)", "공예/취미/수집(외)", "여행(외)", "건강/스포츠(외)", "청소년(외)", "해외잡지(외)", "일본도서(외)", "잡지(외)", "코믹(외)", "문학(외)", "실용/취미/생활(외)",
										"애니메이션 굿즈(외)", "중국도서(외)", "소설(외)", "중국어 교재(외)", "어린이(외)", "캐릭터(외)", "그림책(외)", "리더스(외)", "챕터북(외)", "동화책(외)", "오디오북(외)", "어린이사전(외)",
										"개념학습(외)", "코스북(외)", "영어학습(외)", "교과학습(외)", "미국교과서(외)", "수상작(외)", "제2외국어/이중언어(외)", "기타 언어권(외)", "프랑스 도서(외)", "독일 도서(외)", "스페인 도서(외)",
										"베트남 도서(외)", "기타 도서(외)"};
								request.setAttribute("g1", koreagenre);
								request.setAttribute("g2", foreigngenre);
							%>
							<div class="input__box sign__up__form">
								<label for="genre" class="right1">장　르 <span>*</span></label> <select id="genre"
									name="genre" style="height: 30px;" validationText="장르" class="input_width">
									<option value="">- -</option>
									<c:forEach items="${g1}" var="genre1">
										<option value="${genre1}">${genre1}</option>
									</c:forEach>
									<c:forEach items="${g2}" var="genre2">
										<option value="${genre2}">${genre2}</option>
									</c:forEach>
								</select>

							</div>

							<div class="input__box sign__up__form">
								<label for="writer" class="right1">저　자 <span>*</span></label> <input type="text"
									id="writer" name="writer" validationText="저자" class="input_width">
							</div>

							<div class="input__box sign__up__form">
								<label for="publisher" class="right1">출판사 <span>*</span></label> <input
									type="text" id="publisher" name="publisher" validationText="출판사" class="input_width">
							</div>

							<div class="input__box sign__up__form">
								<label for="content">줄거리 <span>*</span></label>
								<textarea type="text" id="content" name="content" rows="4"
									cols="98" validationText="줄거리"></textarea>
							</div>

							<div class="input__box sign__up__form">
								<label for="image" class="right1">이미지 <span>*</span></label><input type='file'
									id="image" name="file" validationText="이미지" class="input_width"/> <img id="blah" src="#"
									alt="book image" width="270" height="340" />
							</div>

							<div class="input__box sign__up__form">
								<label for="finalUpdateMemberId" class="right1">최종수정자 <span>*</span></label> <input
									type="hidden" id="finalUpdateMemberId"
									name="finalUpdateMemberId" value="${login.id}"> <input
									type="text" class="input_width2" value="${login.nickname}" readonly>
							</div>

							<!-- <input type="submit" title="로그인" value="로그인"> -->

							<div class="form__btn al_center">
								<button type="button"
									onclick="location.href='/book/readPage${pageMaker.makeSearch(pageMaker.cri.page)}&id=${BookVO.id}'">
									취소</button>
								<button type="button" class="validationFormButton">등록</button>
							</div>

						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>

<%@include file="../include/footer.jsp"%>
<script src="/resources/js/custom/form.js"></script>


<script type="text/javascript"
	src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
<script type="text/javascript">

	$(function() {
		$("#image").on('change', function() {
			readURL(this);
		});
	});

	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#blah').attr('src', e.target.result);
			}

			reader.readAsDataURL(input.files[0]);
		}
	}
</script>




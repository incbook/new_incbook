<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="../include/header.jsp"%>
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
	<section class="my_account_area pt--80 pb--55 bg--white">
		<div class="container">
			<div class="row">
				<%@include file="../include/includeSide.jsp"%>

				<div class="col-lg-9 col-12 order-1 order-lg-2">
					<div class="my__account__wrapper">
						<div class="cus_title">
							<p>
								<strong>도서 장르 선택</strong>
							</p>
						</div>
						
						<form action="/personalize/personalChoice" method="post">
							<input type="hidden" name="memberId" value="${login.id}">
							<div class="account__form">
								<h3 align="center">국내도서</h3><br>
								<c:forEach items="${g1}" var="genre1" varStatus="status" begin="1">
									<label class="custom-control custom-checkbox form-field">
										<input onclick="CountChecked(this)" class="limit_check custom-control-input" 
												name="genre" type="checkbox" value="${genre1}" 
												<c:out value="${genreList.contains(genre1) ?'checked':''}"/> >
										<span class="custom-control-indicator"></span>
										<span class="custom-control-description">${genre1}</span>
									</label>
									<c:if test="${status.index % 4 eq 0}"><br></c:if>
								</c:forEach>
								<br><br><hr><br>
								
								<h3 align="center">해외도서</h3><br>
								<c:forEach items="${g2}" var="genre2" varStatus="status" begin="1">
									<label class="custom-control custom-checkbox form-field">
										<input onclick="CountChecked(this)" class="limit_check custom-control-input" 
												name="genre" type="checkbox" value="${genre2}"
												<c:out value="${genreList.contains(genre2) ?'checked':''}"/>>
										<span class="custom-control-indicator"></span>
										<span class="custom-control-description">${genre2}</span>
									</label>
									<c:if test="${status.index % 4 eq 0}"><br></c:if>
								</c:forEach>
								
								<br><br><hr><br>
								<div class="form__btn custom__center">
									<button>저장하기</button>
									<button onclick="ResetCount()" type="reset" class="all_uncheck">전체 취소</button>
								</div>
								
							</div>
						</form>
						<!-- <div class="account__form">
							<div class="form__btn custom__center">
								<button>저장하기</button>
								<button onclick="ResetCount()" type="reset" class="all_uncheck">전체 취소</button>
							</div>
						</div> -->
						
					</div>					
				</div>
			</div>
		</div>
	</section>

<%@include file="../include/footer.jsp"%>
<script src="/resources/js/custom/form.js"></script>

<script>
var maxChecked = 5;
var totalChecked = '${genreList.size()}';

function CountChecked(field) {
	if (field.checked){
		totalChecked += 1;
	}
	else {
		totalChecked -= 1; 
	}
	
	if (totalChecked > maxChecked) {
		alert ("최대 5개 까지만 가능합니다.");
		field.checked = false;
		totalChecked -= 1;
	}
}

function ResetCount(){
	totalChecked = 0;
}

</script>
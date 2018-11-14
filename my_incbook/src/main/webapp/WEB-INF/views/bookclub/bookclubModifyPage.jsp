<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../include/header.jsp"%>

				
<section class="my_account_area pt--80 pb--55 bg--white">
	<div class="container">
		<div class="row">
			<div class="col-lg-12"></div>
			<div class="col-lg-12 col-12">
				<div class="my__account__wrapper">
					<h3 class="account__title">북클럽 수정</h3>


						
						<form role="form" action="/bookclub/bookclubModifyPage" method="post">
						<div class="account__form">
							<input type="hidden" name="bookclubId" value="${modifyTarget.id}"/>
							<input type="hidden" name="page" value ="${cri.page}">
							<input type="hidden" name="pagesize" value ="${cri.pagesize}">
							<%
								String [] koreagenre = { " - -", "유아", "어린이", "전집/중고전집", "청소년", "좋은부모", "초등학교참고서", "중학교참고서", "고등학교참고서", "여행",
										"가정/요리/뷰티", "건강/취미/레저", "사전/기타", "잡지", "만화", "고전", "소설/시/희곡", "장르소설", "에세이", "인문학", "사회과학", "역사",
										"과학", "예술/대중문화", "종교/역학", "경제경영", "자기계발", "외국어", "컴퓨터/모바일", "대학교재", "수험서/자격증", "공무원수험서" };
								String [] foreigngenre = { "영미도서", "소설/시/희곡", "ELT/어학/사전", "인문/사회", "경제경영", "자기계발", "자연과학", "컴퓨터", "예술/대중문화",
										"가정/원예/인테리어", "공예/취미/수집", "여행", "건강/스포츠", "청소년", "해외잡지", "일본도서", "잡지", "코믹", "문학", "실용/취미/생활",
										"애니메이션 굿즈", "중국도서", "소설", "중국어 교재", "어린이", "캐릭터", "그림책", "리더스", "챕터북", "동화책", "오디오북", "어린이사전",
										"개념학습", "코스북", "영어학습", "교과학습", "미국교과서", "수상작", "제2외국어/이중언어", "기타 언어권", "프랑스 도서", "독일 도서", "스페인 도서",
										"베트남 도서", "기타 도서", " - -"};
								request.setAttribute("g1", koreagenre);
								request.setAttribute("g2", foreigngenre);
							%>
							<div class="input__box">
								<label for="genre">장르 <span>*</span></label> 
								<select id="genre" name="genre" style="height: 30px;">
									<c:forEach items="${g1}" var="genre1">
										<option value="${genre1}">
											${genre1}</option>
									</c:forEach>
									<c:forEach items="${g2}" var="genre2">
										<option value="${genre2}">
											${genre2}</option>
									</c:forEach>
								</select>
								
							
							<div class="input__box">
								<label for="title">이름<span>*</span></label>
								<input type="text" id="name" name="name" value="${modifyTarget.name}">
							</div>

							<div>
								<button type="button" id="btn_modify">수정</button>
								<button type="button" id="btn_cancel">취소</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
</section>
					

<%@include file="../include/footer.jsp"%>
<script>
$(document).ready(function() {
   var formObj = $("form[role='form']");
   console.log(formObj);

   $("#btn_modify").on("click", function() {
   	 formObj.attr("action", "/bookclub/bookclubModifyPage");
   	 formObj.attr("method", "post");
     formObj.submit();
   });
   $("#btn_cancel").on("click", function() {
     self.location ="/bookclub/boardList?page=${cri.page}&pagesize=${cri.pagesize}&bookclubId=${modifyTarget.id}";
   });
 
});
</script>
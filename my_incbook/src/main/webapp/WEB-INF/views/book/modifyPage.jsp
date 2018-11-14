.............<%@ page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.incbook.project.domain.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="../include/header.jsp"%>

<form role="form" action="modifyPage" method="post"
	class="validationForm" enctype="multipart/form-data" 
>
	<input type='hidden' name='id' value="${modifyTarget.id}"> <input
		type='hidden' name='page' value="${cri.page}"> <input
		type='hidden' name='pagesize' value="${cri.pagesize}"> <input
		type="hidden" name='keyword' value="${cri.keyword}"> <input
		type="hidden" name='prePage' value="${prePage}">

	<section class="my_account_area pt--80 pb--55 bg--white">
		<div class="container">
			<div class="row">
				<div class="col-lg-12"></div>
				<div class="col-lg-12 col-12">
					<div class="my__account__wrapper">
						<h3 class="account__title">도서 상세정보 수정</h3>

						<div class="account__form" style="border-color: red">
							<div class="input__box">
								<label for="title">제목 <span>*</span></label> <input type="text"
									name="title" value="${modifyTarget.title}" validationText="제목">
							</div>
							<%
								String[] genre = {"유아", "어린이", "전집/중고전집", "청소년", "좋은부모", "초등학교참고서", "중학교참고서", "고등학교참고서", "여행", "가정/요리/뷰티",
										"건강/취미/레저", "사전/기타", "잡지", "만화", "고전", "소설/시/희곡", "장르소설", "에세이", "인문학", "사회과학", "역사", "과학",
										"예술/대중문화", "종교/역학", "경제경영", "자기계발", "외국어", "컴퓨터/모바일", "대학교재", "수험서/자격증", "공무원수험서", "영미도서(외)",
										"소설/시/희곡(외)", "ELT/어학/사전(외)", "인문/사회(외)", "경제경영(외)", "자기계발(외)", "자연과학(외)", "컴퓨터(외)", "예술/대중문화(외)",
										"가정/원예/인테리어(외)", "공예/취미/수집(외)", "여행(외)", "건강/스포츠(외)", "청소년(외)", "해외잡지(외)", "일본도서(외)", "잡지(외)",
										"코믹(외)", "문학(외)", "실용/취미/생활(외)", "애니메이션 굿즈(외)", "중국도서(외)", "소설(외)", "중국어 교재(외)", "어린이(외)", "캐릭터(외)",
										"그림책(외)", "리더스(외)", "챕터북(외)", "동화책(외)", "오디오북(외)", "어린이사전(외)", "개념학습(외)", "코스북(외)", "영어학습(외)",
										"교과학습(외)", "미국교과서(외)", "수상작(외)", "제2외국어/이중언어(외)", "기타 언어권(외)", "프랑스 도서(외)", "독일 도서(외)", "스페인 도서(외)",
										"베트남 도서(외)", "기타 도서(외)"};
								request.setAttribute("g1", genre);
							%>

							<div class="input__box">
								<label for="genre">장르 <span>*</span></label> <select id="genre"
									name="genre" style="height: 30px;" validationText="장르">
									<c:forEach items="${g1}" var="genre1">
										<c:if test="${genre1 eq modifyTarget.genre}">
											<option selected="selected" value="${genre1}">${genre1}</option>
										</c:if>
										<c:if test="${genre1 ne modifyTarget.genre}">
											<option value="${genre1}">${genre1}</option>
										</c:if>
									</c:forEach>
								</select>
							</div>

							<div class="input__box">
								<label for="writer">저자 <span>*</span></label> <input type="text"
									name="writer" value="${modifyTarget.writer}"
									validationText="저자">
							</div>

							<div class="input__box">
								<label for="publisher">출판사 <span>*</span></label> <input
									type="text" name="publisher" value="${modifyTarget.publisher}"
									validationText="출판사">
							</div>

							<div class="input__box">
								<label for="content">줄거리 <span>*</span></label>
								<textarea name="content" rows="7" cols="50" validationText="줄거리">${modifyTarget.content}</textarea>
							</div>

							<div class="input__box">
								<label for="image">이미지 <span>*</span></label><input type='file'
									id="image" name="file" /> <img id="blah" src="#"
									alt="book image" width="270" height="340" style="display:none" /> 
									<img id="image"
									src="/img/${modifyTarget.id}/${modifyTarget.image}"
									alt="book image" width="270" height="340"/>
							</div>

							<button type="button" id="save" class="validationFormButton">저장</button>
							<button type="button" id="cancle">취소</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

</form>

<%@include file="../include/footer.jsp"%>
<script src="/resources/js/custom/form.js"></script>

<script type="text/javascript">
	$(document)
			.ready(
					function() {
						var formObj = $("form[role='form']");
						console.log(formObj);
						$("#save").on("click", function() {
							formObj.submit();
						});

						$("#cancle")
								.on(
										"click",
										function() {
											self.location = "/book/readPage?page=${cri.page}&pagesize=${cri.pagesize}&id=${modifyTarget.id}&prePage=${prePage}";
										});
					});

	$("#image").change(function(){
		$("#blah").show();
		
	});
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
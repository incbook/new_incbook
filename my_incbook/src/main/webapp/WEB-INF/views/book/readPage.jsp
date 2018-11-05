<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.incbook.project.domain.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="../include/header.jsp"%>


<section class="my_account_area pt--80 pb--55 bg--white">
	<div class="container">
		<div class="row">
			<div class="col-lg-12"></div>
			<div class="col-lg-12 col-12">
				<div class="my__account__wrapper">
					<h3 class="account__title">도서 상세정보</h3>

					<form role="form" method="get">
						<div class="account__form">
							<div class="input__box">
								<label for="title">제목 <span>*</span></label> <input type="text"
									name="title" value="${findBookByID2.title}" readonly="readonly">
							</div>

							<div class="input__box">
								<label for="genre">장르 <span>*</span></label> <input type="text"
									name="genre" value="${findBookByID2.genre}" readonly="readonly">
							</div>
							<div class="input__box">
								<label for="writer">저자 <span>*</span></label> <input type="text"
									name="writer" value="${findBookByID2.writer}"
									readonly="readonly">
							</div>

							<div class="input__box">
								<label for="publisher">출판사 <span>*</span></label> <input
									type="text" name="publisher" value="${findBookByID2.publisher}"
									readonly="readonly">
							</div>

							<div class="input__box">
								<label for="content">줄거리 <span>*</span></label>
								<textarea name="content" rows="3" readonly="readonly">${findBookByID2.content} </textarea>

							</div>

							<div class="input__box">
								<label for="image">이미지 <span>*</span></label> <input type="text"
									name="image" value="${findBookByID2.image}" readonly="readonly">
							</div>

							<div class="input__box">
								<label for="finalUpdateMemberId">최종수정자 <span>*</span></label> <input
									type="text" name="finalUpdateMemberId"
									value="${findBookByID2.finalUpdateMemberId}"
									readonly="readonly">
							</div>

							<div>
								<button type="button" id="modify">수정</button>
								<c:if test="${prePage == 'top'}">
									<button type="button" id="top">목록가기</button>
								</c:if>
								<c:if test="${prePage == 'new'}">
									<button type="button" id="new">목록가기</button>
								</c:if>
								<c:if test="${prePage == 'genre'}">
									<button type="button" id="genre">목록가기</button>
								</c:if>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>

<form role="form">

	<input type="hidden" name='id' value="${findBookByID2.id}"> 
	<input type="hidden" name='page' value="${cri.page}"> 
	<input type="hidden" name='pagesize' value="${cri.pagesize}">
	<input type="hidden" name='keyword' value="${cri.keyword}"> 
	

</form>

<%@include file="../include/footer.jsp"%>

<script type="text/javascript">
	$(document).ready(function() {
		var formObj = $("[role]");
		console.log(formObj);
		$("#modify").on("click", function() {
			formObj.attr("action", "/book/modifyPage");
			formObj.attr("method", "get");
			formObj.submit();
		});

		$("#top").on("click", function() {
			formObj.attr("action", "/book/allTop100");
			formObj.attr("method", "get");
			formObj.submit();
		});
		
		$("#new").on("click", function() {
			formObj.attr("action", "/book/newBookChart");
			formObj.attr("method", "get");
			formObj.submit();
		});
		
		$("#genre").on("click", function() {
			formObj.attr("action", "/book/genreTop100");
			formObj.attr("method", "get");
			formObj.submit();
		});

	});
</script>
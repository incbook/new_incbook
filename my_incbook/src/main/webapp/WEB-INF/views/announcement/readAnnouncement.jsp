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
					<h3 class="account__title">공지사항</h3>



					<form role="form" method="post">
						<div class="account__form">
							<input type='hidden' name='id' value='${readAnnouncement.id}'>
							<input type='hidden' name='page' value="${boardCri.page}">
							<input type='hidden' name='pagesize' value="${boardCri.pagesize}">

							<div class="input__box">
								<label for="id">번호 <span>*</span></label> <input type="text"
									id="id" name="id" value="${readAnnouncement.id}" readonly>
							</div>
							<div class="input__box">
								<label for="title">제목<span>*</span></label> <input type="text"
									id="title" name="title" value="${readAnnouncement.title}"
									readonly>
							</div>
							<div class="input__box">
								<label for="memberId">작성자 <span>*</span></label> <input
									type="text" id="memberId" name="memberId"
									value="${readAnnouncement.memberId}" readonly>
							</div>

							<div class="input__box">
								<label for="content">내용<span>*</span></label> <input type="text"
									id="content" name="content" value="${readAnnouncement.content}"
									readonly>

							</div>

							<div class="input__box">
								<label for="regdate">날짜<span>*</span></label> <input type="text"
									id="regdate"
									value="<fmt:formatDate pattern='YYYY-MM-dd HH:mm'
										value='${readAnnouncement.regdate}' />"
									readonly>
							</div>

							<div class="input__box">
								<label for="regdate">조회수<span>*</span></label> <input
									type="text" id="view_count"
									value="${readAnnouncement.viewCount}" readonly>
							</div>
							<div class="button_form">
								<button type="button" id="btn_goList">목록</button>
								<%-- <c:if test="${login,grade == '관리자'}"> --%>
								<button type="button" id="btn_modify">수정하기</button>
								<button type="button" id="btn_delete">삭제하기</button>
								<%-- </c:if> --%>
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
	//<![CDATA[
	$(document).ready(function() {
		var formObj = $("form[role='form']");
		console.log(formObj);

		$("#btn_goList").on("click", function() {
			formObj.attr("method", "get");
			formObj.attr("action", "/announcement/announcement");
			formObj.submit();
		});
		$("#btn_modify").on("click", function() {
			formObj.attr("action", "/announcement/modifyPage");
			formObj.attr("method", "get");
			formObj.submit();
		});
		$("#btn_delete").on("click", function() {
			formObj.attr("action", "/announcement/delete");
			formObj.submit();
		});
	});
	//]]>
</script>
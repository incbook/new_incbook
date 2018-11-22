<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../include/header.jsp"%>


<section class="my_account_area pt--80 pb--55 bg--white">
	<div class="container">
		<div class="row">
			<div class="col-lg-1"></div>
			<div class="col-lg-10 col-12">
				<div class="my__account__wrapper">
					<h3 class="account__title" align="center" style="border-bottom: 1px dotted #ddd; padding-bottom: 6px;">공지사항</h3>

					<form role="form" method="post">
						<div class="account__form">
							<input type='hidden' name='id' value='${readAnnouncement.id}'>
							<input type='hidden' name='page' value="${boardCri.page}">
							<input type='hidden' name='pagesize' value="${boardCri.pagesize}">

							<div class="input__box sign__up__form">
								<label for="id">번　호 <span>&ensp;${readAnnouncement.id}</span></label> 
							</div>
								
							<div class="input__box sign__up__form">
								<label for="title" style="float: left; width: 80%; font-size: 13px;">제　목 <span>&ensp;${readAnnouncement.title}</span></label> 
								<p style="float: right; width: 20%; text-align: right;"><fmt:formatDate pattern="YYYY-MM-dd HH:mm" value="${readAnnouncement.regdate}" /></p>
							</div>
							
							
							<%-- <div class="input__box">
								<p style="float: right; width: 20%; text-align: right;"><fmt:formatDate pattern="YYYY-MM-dd HH:mm" value="${readAnnouncement.regdate}" /></p>
								<input type="text" id="regdate" value="<fmt:formatDate pattern='YYYY-MM-dd HH:mm' value='${readAnnouncement.regdate}' />" readonly>
							</div> --%>
							
							<div class="input__box sign__up__form">
								<label for="memberId" style="float: left; width: 100%; margin: 20px 0; padding: 10px 0; border-top: 1px dashed; #ddd;">작성자 <span>&ensp;${readAnnouncement.member.nickname}</span></label>
							</div>

							<div class="input__box sign__up__form"  style="float: left; width: 100%; height: 300px; padding: 10px; border-radius:10px; border: 1px solid #ddd;">${readAnnouncement.content}</div>
<%-- 							<div class="input__box" style="border:1px solid #ddd; border-radius: 3px; padding: 6px;">${readAnnouncement.content}</div> --%>
							
							
							<div class="clearfix"></div>
							<div class="input__box sign__up__form" style="margin: 20px 0; border-bottom: 1px dashed; #ddd;">
								<label for="regdate">조회수<span>&ensp;${readAnnouncement.viewCount}</span></label>
							</div>
							
							<div class="form__btn button_form custom__center">
								<button type="button" id="btn_goList" class="radius">목록</button>
								<c:if test="${login.grade eq '관리자'}">
								<button type="button" id="btn_modify" class="radius">수정하기</button>
								<button type="button" id="btn_delete" class="radius">삭제하기</button>
								</c:if>
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
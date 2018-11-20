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


						
						<form role="form" action="/bookclub/modifyPage" method="post">
						<div class="account__form">
							<input type="hidden" name="id" value="${boardModifyTarget.id}"/>
							<input type="hidden" name="bookclubId" value="${bookclubId}"/>
							<input type="hidden" name="page" value ="${cri.page}">
							<input type="hidden" name="pagesize" value ="${cri.pagesize}">
									
							
							<div class="input__box">
								<label for="title">이름<span>*</span></label>
								<input type="text" id="title" name="title" value="${boardModifyTarget.title}">
							</div>

							<div class="form__btn button_form">
								<button type="button" id="btn_modify" class="radius">수정</button>
								<button type="button" id="btn_cancel" class="radius">취소</button>
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
   	 formObj.attr("action", "/bookclub/boardModifyPage");
   	 formObj.attr("method", "post");
     formObj.submit();
   });
   $("#btn_cancel").on("click", function() {
     self.location ="/bookclub/noticeSearchList?page=${cri.page}&pagesize=${cri.pagesize}&boardId=${boardModifyTarget.id}&bookclubId=${bookclubId}";
   });
 
});
</script>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.incbook.project.domain.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 

<%@include file="../include/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>            
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		var formObj = $("form[role='form']");
		console.log(formObj);
		$("#modify").on("click", function() {
			formObj.attr("action", "/book/modifyPage");
			formObj.attr("method", "get");
			formObj.submit();
		});
		
		$("#remove").on("click", function() {
			formObj.attr("action", "/book/removePage");
			formObj.submit();
		});
		
		$("#golist").on("click", function() {
			formObj.attr("action", "/book/allTop100");
			formObj.attr("method", "get");
			formObj.submit();
			
		});

	});
</script>
<title>INCBOOK</title>
</head>
<body>

	<div>
		<button type="submit" id="modify">Modify</button>
		<button type="submit" id="remove">Remove</button>
		<button type="submit" id="golist">Go List</button>
	</div>
 	<form role="form" method="post">
		<input type='hidden' name='id' value='${findBookByID2.id}'>
	</form>
<%-- 	<div>
		제목 <input type="text" name="title" value="${findBookByID2.title}"
			readonly="readonly">
	</div>
	<div>
		장르 <input type="text" name="genre" value="${findBookByID2.genre}"
			readonly="readonly">	</div>
	<div>
		저자 <input type="text" name="writer" value="${findBookByID2.writer}"
			readonly="readonly">
	</div> 
	<div>
		출판사 <input type="text" name="publisher" value="${findBookByID2.publisher}"
			readonly="readonly">
	</div> 
	<div>
		평점 <input type="text" name="averageScore" value="${findBookByID2.averageScore}"
			readonly="readonly">
	</div> 
	<div>
		등록일 <input type="text" name="regdate" value="${findBookByID2.regdate}"
			readonly="readonly">
	</div> 
	<div>
		최종수정일 <input type="text" name="updateDate" value="${findBookByID2.updateDate}"
			readonly="readonly">
	</div> 
	<div>
		최종수정자 <input type="text" name="finalUpdateMemberId" value="${findBookByID2.finalUpdateMemberId}"
			readonly="readonly">
	</div> 
	<div>
		줄거리 <textarea name="content" rows="3" readonly="readonly">${findBookByID2.content} </textarea>

	</div> 
	<div>
		이미지 <input type="text" name="image" value="${findBookByID2.image}"
			readonly="readonly">
	</div> 
	<div>
		조회수 <input type="text" name="viewCount" value="${findBookByID2.viewCount}"
			readonly="readonly">
	</div>  --%>
	
	<section class="wn__product__area brown--color pb--30 board_pd">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<table class="table table-striped">
					<thead>
						<tr>
							<th scope="col">제목</th>
							<th scope="col">장르</th>
							<th scope="col">작성자</th>
							<th scope="col">출판사</th>
							<th scope="col">평점</th>
							<th scope="col">조회수</th>

						</tr>
					</thead>
					<tbody>


						<tr>
							<td>${findBookByID2.title}</td>
							<td>${findBookByID2.genre}</td>
							<td>${findBookByID2.writer}</td>
							<td>${findBookByID2.publisher}</td>
							<td>${findBookByID2.averageScore}</td>
							<td>${findBookByID2.viewCount}</td>
						</tr>

					</tbody>
				</table>
			</div>
		</div>
	</div>
	

	<form role="form" action="modifyPage" method="post">
	
		<input type="hidden" name='id' value="${findBookByID2.id}">
		<input type="hidden" name='page' value="${cri.page}">
		<input type="hidden" name='pagesize' value="${cri.pagesize}">
		
	</form>
	

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.incbook.project.domain.*" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>INCBOOK</title>
</head>
<body>
<% 
	BookVO bookInfo = (BookVO)request.getAttribute("bookInfo");
	if (bookInfo != null) {
		%>
	<table class = "table table-d" >
		<tr>
			<th>제목</th>
			<th>장르</th>
			<th>작가</th>
			<th>출판사</th>
			<th>등록일</th>
			<th>최종수정일</th>
		
		</tr>
		<br>
		
	<%= bookInfo.getTitle() %>
	<%= bookInfo.getGenre() %>
	<%= bookInfo.getWriter() %>
	<%= bookInfo.getPublisher() %>
	<%= bookInfo.getRegdate() %>
	<%= bookInfo.getUpdateDate() %>

		<% } else {
		%>
		<script>
			alert("정보없음");
			history.go(-1);
		</script>
		<%
		}
		%>
	</table>

</body>
</html>
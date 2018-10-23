<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session = "true"%>
<%@ page import = "com.incbook.project.domain.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>INCBOOK</title>
</head>
<body>
<%
	MemberVO id = (MemberVO)request.getAttribute("id");

	if(id != null){
    session.setAttribute("loginSession", id );
	} else{
	%>
	<script>
		alert("로그인 실패");
		history.go(-1);
	</script>	
	<%
	}
	%>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<input type="hidden" id="checking" value="${login_id}">
<c:if test="${login_id eq null}">
	<strong style="color:blue"> * 아이디를 사용 할 수 있습니다 (O)</strong>
</c:if>
<c:if test="${login_id ne null}">
	<strong style="color:red"> * 아이디를 사용 할 수 없습니다 (X)</strong>
</c:if>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<input type="hidden" id="checking" value="${login_id}">
<c:if test="${login_id eq null}">
	<strong style="color:blue"> * This ID is available (O)</strong>
</c:if>
<c:if test="${login_id ne null}">
	<strong style="color:red"> * This ID is not available (X)</strong>
</c:if>
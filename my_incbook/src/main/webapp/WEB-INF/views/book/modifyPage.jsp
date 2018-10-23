<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	//<![CDATA[
	$(document).ready(function() {
		var formObj = $("form[role='form']");
		console.log(formObj);
		$("#save").on("click", function() {
			formObj.submit();
		});
	
		$("#cancle").on("click", function() {
			self.location = "/book/list?page=${cri.page}&pagesize=${cri.pagesize}";
		});

	});
	//]]>
</script>
<title>INCBOOK</title>
</head>
<body>
	<form role="form" action="modifyPage" method="post">
	<input type='hidden' name='page' value = "${cri.page}">
	<input type='hidden' name='pagesize' value = "${cri.pagesize}">
		
		id<input type="text" name="bno" value="${modifyTarget.id}" readonly="readonly" /><br> 
		제목<input type="text" name="title" value="${modifyTarget.title}" /> <br> 
		장르<input type="text" name="title" value="${modifyTarget.genre}" /> <br> 
		저자<input type="text" name="title" value="${modifyTarget.writer}" /> <br> 
		출판사<input type="text" name="title" value="${modifyTarget.publisher}" /> <br> 
		줄거리<input type="text" name="writer" value="${modifyTarget.content}" /> <br>
		
		<button type="submit" id="save">저장</button>
	</form>
		<button type="submit" id="cancle">취소</button>

</body>
</html>
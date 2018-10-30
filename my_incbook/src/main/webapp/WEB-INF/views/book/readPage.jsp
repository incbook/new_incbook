<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<form role="form" method="post">
		<input type='hidden' name='id' value='${bookVO.id}'>
	</form>
	<div>
		<button type="submit" id="modify">Modify</button>
		<button type="submit" id="remove">Remove</button>
		<button type="submit" id="golist">Go List</button>
	</div>
 	<form role="form" method="post">
		<input type='hidden' name='id' value='${bookVO.id}'>
	</form>
	<div>
		제목 <input type="text" name="title" value="${bookVO.title}"
			readonly="readonly">
	</div>
	<div>
		장르 <input type="text" name="genre" value="${bookVO.genre}"
			readonly="readonly">	</div>
	<div>
		저자 <input type="text" name="writer" value="${bookVO.writer}"
			readonly="readonly">
	</div> 
	<div>
		출판사 <input type="text" name="publisher" value="${bookVO.publisher}"
			readonly="readonly">
	</div> 
	<div>
		평점 <input type="text" name="averageScore" value="${bookVO.averageScore}"
			readonly="readonly">
	</div> 
	<div>
		등록일 <input type="text" name="regdate" value="${bookVO.regdate}"
			readonly="readonly">
	</div> 
	<div>
		최종수정일 <input type="text" name="updateDate" value="${bookVO.updateDate}"
			readonly="readonly">
	</div> 
	<div>
		최종수정자 <input type="text" name="finalUpdateMemberId" value="${bookVO.finalUpdateMemberId}"
			readonly="readonly">
	</div> 
	<div>
		줄거리 <textarea name="content" rows="3" readonly="readonly">${bookVO.content} </textarea>

	</div> 
	<div>
		이미지 <input type="text" name="image" value="${bookVO.image}"
			readonly="readonly">
	</div> 
	<div>
		조회수 <input type="text" name="viewCount" value="${bookVO.viewCount}"
			readonly="readonly">
	</div> 

	<form role="form" action="modifyPage" method="post">
	
		<input type="hidden" name='id' value="${bookVO.id}">
		<input type="hidden" name='page' value="${cri.page}">
		<input type="hidden" name='pagesize' value="${cri.pagesize}">
		
	</form>
	

</body>
</html>
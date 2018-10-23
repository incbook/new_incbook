<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>INCBOOK</title>
</head>
<body>
 	<form role="form" method="post">
		제목<input type="text" name="title"><br>
		장르<input type="text" name="genre"><br>
		작가<input type="text" name="writer"><br>
		출판사<input type="text" name="publisher"><br>
		줄거리<input type="text" name="content"><br>
		이미지<input type="text" name="image"><br>
		마지막수정자<input type="text" name="finalUpdateMemberId"><br>
		
		<button type="submit">등록</button>
	</form>
</body>
</html>
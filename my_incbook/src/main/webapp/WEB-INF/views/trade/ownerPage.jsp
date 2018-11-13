<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<%@include file="../include/header.jsp"%>

<div class="wishlist-area section-padding--lg bg__white imsi_set">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="wishlist-content">
					<h3 class="account__title" align="center">소유자 페이지</h3>
					<form action="#">
						<div class="wishlist-table wnro__table table-responsive pc_history">
							<table class="table table-striped">
								<thead>
	                                <tr class="ch_center">
	                                    <th>대여한 아이디</th>
	                                    <th>책 제목</th>
	                                    <th>포인트 여부</th>
	                                    <th>확인</th>
	                                </tr>
								</thead>
                                <tbody>
	                            	<tr class="ch_center">
	                                    <td>카카오톡</td>
	                                    <td>쫄보의 여행</td>
	                                    <td>X</td>
	                                    <td><input type="submit" value="확인" id="point_no" onclick="point_no()"></td>
                                   </tr>
                                </tbody>
							</table>
						</div>  
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<%@include file="../include/footer.jsp"%>
<script type="text/javascript">
$(function() {
	$("#point_no").on("click",function() {
		alert("포인트가 적립되었습니다");
	});
});
</script>

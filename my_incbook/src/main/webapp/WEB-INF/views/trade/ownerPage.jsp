<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<%@include file="../include/header.jsp"%>

<div class="wishlist-area section-padding--lg bg__white imsi_set">
	<div class="container">
		<div class="row">
			<%@include file="../include/includeSide.jsp"%>
			
		
			<div class="col-lg-9 col-12 order-1 order-lg-2">
					<div class="my__account__wrapper">
						<div class="cus_title">
							<p>
								<strong>소유자 대여 현황</strong>
							</p>
						</div>
					<form action="#">
						<div class="wishlist-table wnro__table table-responsive pc_history">
							<table class="table table-striped">
								<thead>
	                                <tr class="ch_center">
	                                    <th>소유자 아이디</th>
	                                    <th>책 제목</th>
	                                    <th>확인</th>
	                                    <th>날짜</th>
	                                </tr>
								</thead>
                                <tbody>
                                	<c:forEach items="${ownerList}" var="tradeVO">
		                            	<tr class="ch_center">
		                                    <td>${tradeVO.member.nickname}</td>
		                                    <td>${tradeVO.book.title}</td>
		                                    <c:if test="${tradeVO.rent.isReturn eq '대여예약'}">
			                                    <td><button type="button" value="${tradeVO.id}" class="point_no" >취소</button></td>
		                                    </c:if>
		                                    <c:if test="${tradeVO.rent.isReturn eq '대여완료'}">
			                                    <td>완료</td>
		                                    </c:if>
		                                    <td>
		                                    	<fmt:formatDate pattern="YYYY-MM-dd" value="${tradeVO.tradeDate}" />
		                                    </td>
	                                   </tr>
                                   </c:forEach>
                                </tbody>
							</table>
						</div>  
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<form action="/trade/pointNo" id="point_no_form" method="post">
	<input type="hidden" name="id" id="point_no_id" value=""/>
</form>

<%@include file="../include/footer.jsp"%>
<script type="text/javascript">
$(function() {
	$(".point_no").on("click",function() {
		var point_no_form = $("#point_no_form");
		
		var point_no_id = $(this).val();
		$("#point_no_id").val(point_no_id);
		point_no_form.submit();
	});
});
</script>

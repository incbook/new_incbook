<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<%@ page session="false" %>
<%@include file="../include/header.jsp"%>

<div class="wishlist-area section-padding--lg bg__white imsi_set">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="wishlist-content">
					<h3 class="account__title" align=center style="color: #8bbdee;">
						<img src="/resources/images/icon2.png" style="width:50px;">
						포인트충전 내역
						<img src="/resources/images/icon2.png" style="width:50px;">
					</h3>
					<form action="#">
						<div class="wishlist-table wnro__table table-responsive pc_history">
							<table class="table table-striped">
								<thead>
	                                <tr class="ch_center">
	                                    <th>Number</th>
	                                    <th>MemberID</th>
	                                    <th>Payment</th>
	                                    <th>Point</th>
	                                    <th>Date</th>
	                                </tr>
								</thead>
                                <tbody>
                                	<c:forEach items="${historyAll}" var="PaymentVO">
		                            	<tr class="ch_center">
		                                    <td>${PaymentVO.id}</td>
		                                    <td>${PaymentVO.memberId}</td>
		                                    <td>${PaymentVO.paymentPrice}</td>
		                                    <td>${PaymentVO.point}</td>
		                                    <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${PaymentVO.regdate}" /></td>
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

<ul class="wn__pagination page_pb_40">
	<li class="active"><a href="#">1</a></li>
	<li><a href="#">2</a></li>
	<li><a href="#">3</a></li>
	<li><a href="#">4</a></li>
	<li><a href="#"><i class="zmdi zmdi-chevron-right"></i></a></li>
</ul>
	
        
<%@include file="../include/footer.jsp"%>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 -->
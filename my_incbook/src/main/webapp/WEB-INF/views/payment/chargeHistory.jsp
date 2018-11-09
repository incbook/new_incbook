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
	<c:if test="${pageMaker.prev}">
		<li><a
			href="/payment/chargeHistory${pageMaker.makeSearch(pageMaker.startPage - 1)}">&laquo;</a></li>
	</c:if>

	<c:forEach begin="${pageMaker.startPage}"
		end="${pageMaker.endPage}" var="idx">
		<li
			<c:out value="${pageMaker.cri.page == idx?'class=active':''}"/>>
			<a href="/payment/chargeHistory${pageMaker.makeQuery(idx)}">${idx}</a>
		</li>
	</c:forEach>

	<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
		<li><a
			href="/payment/chargeHistory${pageMaker.makeQuery(pageMaker.endPage + 1)}">&raquo;</a></li>
	</c:if>
</ul>
	
        
<%@include file="../include/footer.jsp"%>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 -->
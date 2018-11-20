<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<%@include file="../include/header.jsp"%>

<div class="wishlist-area pb--55 section-padding--lg bg__white imsi_set pdb250">
	<div class="container">
		<div class="row">
			<%@include file="../include/includeSide.jsp"%>
		
			<div class="col-lg-9 col-12 order-1 order-lg-2">
					<div class="my__account__wrapper">
						<div class="cus_title">
							<p>
								<strong>포인트충전 내역</strong>
							</p>
						</div>
					<form action="#">
						<div class="wishlist-table wnro__table table-responsive pc_history">
							<table class="table table-striped">
								<thead>
	                                <tr class="ch_center">
	                                    <th width="60em;">No</th>
	                                    <th width="90em;">ID</th>
	                                    <th width="90em;">충전금액</th>
	                                    <th width="90em;">포인트</th>
	                                    <th width="120em;">날짜</th>
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
					
				</div>
			</div>
		</div>
	</div>
</div>
        
<%@include file="../include/footer.jsp"%>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 -->
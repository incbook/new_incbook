<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<%@include file="../include/header.jsp"%>

<div class="wishlist-area section-padding--lg bg__white more">
	<div class="container">
		<div class="row">
			<%@include file="../include/includeSide.jsp"%>
			
		
			<div class="col-lg-9 col-12 order-1 order-lg-2">
				<div class="my__account__wrapper">
					<div class="cus_title">
						<p>
							<strong>내 포인트 확인</strong>
						</p>
					</div>
					<br>
					
					<div class="container">
						<ul class="nav nav-tabs">
							<li class="active"><a data-toggle="tab" href="#hold">보유 포인트</a></li>
					      	<li><a data-toggle="tab" href="#use">사용내역</a></li>
					      	<li><a data-toggle="tab" href="#stack">적립내역</a></li>
					    </ul>
					
					    <div class="tab-content">
					    	<div id="hold" class="tab-pane fade in active">
								<form action="#">
									<div class="wishlist-table wnro__table table-responsive pc_history">
										<table class="rwd-table table table-striped">
											<thead>
				                                <tr class="ch_center">
				                                	<th>보유 포인트</th>
				                                    <th>사용 가능 포인트</th>
				                                </tr>
											</thead>
			                                <tbody>
					                            <tr class="ch_center">
					                            	<td>${member.point}</td>
					                            	<td>${member.point}</td>
				                                </tr>
			                                </tbody>
										</table>
									</div>  
								</form>
							</div>
					    
					    
					    
							<div id="use" class="tab-pane fade">
								<form action="#">
									<div class="wishlist-table wnro__table table-responsive pc_history">
										<table class="table table-striped">
											<thead>
				                                <tr class="ch_center">
				                                    <th>아이디</th>
				                                    <th>사용내역</th>
				                                    <th>포인트</th>
				                                    <th>날짜</th>
				                                </tr>
											</thead>
			                                <tbody>
					                        <tbody>
					                        	<c:forEach items="${usePointList}" var="usePoint">
						                            <tr class="ch_center">
						                            	<td>${usePoint.member.nickname}</td>
						                            	<td>대여</td>
						                            	<td>${usePoint.totalAmount}</td>
						                            	<td><fmt:formatDate pattern="YYYY-MM-dd" value="${usePoint.tradeDate}"/></td>
					                                </tr>
					                        	</c:forEach>
			                                </tbody>
										</table>
									</div>  
								</form>
							</div>
					      
						    <div id="stack" class="tab-pane fade">
						        <form action="#">
									<div class="wishlist-table wnro__table table-responsive pc_history">
										<table class="table table-striped">
											<thead>
				                                <tr class="ch_center">
				                                    <th>아이디</th>
				                                    <th>적립내역</th>
				                                    <th>포인트</th>
				                                    <th>날짜</th>
				                                </tr>
											</thead>
			                                <tbody>
					                           <c:forEach items="${accumulatePointList}" var="accumulatePoint">
						                            <tr class="ch_center">
						                            	<td>${accumulatePoint.member.nickname}</td>
						                            	<td>대여</td>
						                            	<td>${accumulatePoint.totalAmount}</td>
						                            	<td><fmt:formatDate pattern="YYYY-MM-dd" value="${accumulatePoint.tradeDate}"/></td>
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
		</div>
	</div>
</div>

<form action="/trade/pointNo" id="point_no_form" method="post">
	<input type="hidden" name="id" id="point_no_id" value=""/>
</form>

<%@include file="../include/footer.jsp"%>

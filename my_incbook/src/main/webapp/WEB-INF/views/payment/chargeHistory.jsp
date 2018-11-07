<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	                                    <th>NUMBER</th>
	                                    <th>MemberID</th>
	                                    <th>Payment</th>
	                                    <th>Point</th>
	                                    <th>Regdate</th>
	                                </tr>
								</thead>
                                <tbody>
	                            	<tr class="ch_center">
	                                    <td>1</td>
	                                    <td>apple</td>
	                                    <td>1100원</td>
	                                    <td>10000pt</td>
	                                    <td>2018-11-06</td>
                                   </tr>
                                    <tr class="ch_center">
                                        <td>2</td>
	                                    <td>apple</td>
	                                    <td>2200원</td>
	                                    <td>20000pt</td>
	                                    <td>2018-11-04</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
	                                    <td>apple</td>
	                                    <td>5500원</td>
	                                    <td>50000pt</td>
	                                    <td>2018-10-10</td>
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

<ul class="wn__pagination page_pb_40">
	<li class="active"><a href="#">1</a></li>
	<li><a href="#">2</a></li>
	<li><a href="#">3</a></li>
	<li><a href="#">4</a></li>
	<li><a href="#"><i class="zmdi zmdi-chevron-right"></i></a></li>
</ul>
	
        
<%@include file="../include/footer.jsp"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

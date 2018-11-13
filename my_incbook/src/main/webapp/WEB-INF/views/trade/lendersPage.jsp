<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<%@include file="../include/header.jsp"%>

<div class="wishlist-area section-padding--lg bg__white imsi_set">
	<div class="container">
		<div class="row">
		
			<div class="col-lg-3 col-3">
				<h3 class="wedget__title">My Page</h3>
				<ul>
					<li><a href='http://localhost:8080/member/memberDetail';">회원정보수정</a></li>
					<li><a href="http://localhost:8080/payment/chargeHistory">포인트 충전 내역</a></li>
					<li><a href="http://localhost:8080/own/myOwnList">내가 등록한 도서</a></li>
					<li><a href="http://localhost:8080/trade/lendersPage">대여자 페이지</a></li>
					<li>회원 탈퇴</li>
					<li>회원 탈퇴</li>
					<li>회원 탈퇴</li>
					<li>회원 탈퇴</li>
					<li>회원 탈퇴</li>
					<li>회원 탈퇴</li>
				</ul>
			</div>
		
			<!-- <div class="col-md-12 col-sm-12 col-xs-12"> -->
			<div class="col-lg-9 col-9">
				<div class="wishlist-content">
					<h3 class="account__title" align="center">대여 현황</h3>
					<form action="#">
						<div class="wishlist-table wnro__table table-responsive pc_history">
							<table class="table table-striped">
								<thead>
	                                <tr class="ch_center">
	                                    <th>소유자 아이디</th>
	                                    <th>책 제목</th>
	                                    <th>포인트 여부</th>
	                                    <th>확인</th>
	                                </tr>
								</thead>
                                <tbody>
	                            	<tr class="ch_center">
	                                    <td>대추나무사랑걸렸네</td>
	                                    <td>쫄보의 여행</td>
	                                    <td>X</td>
	                                    <td><input type="submit" value="확인" id="point_no" onclick="point_no()"></td>
                                   </tr>
                                   <tr class="ch_center">
	                                    <td>아이스아메리카노따뜻하게</td>
	                                    <td>재밌어서 밤새읽는 화학 이야기</td>
	                                    <td>O</td>
	                                    <td>완료</td>
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

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>

	<section class="my_account_area pt--80 pb--55 bg--white">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
				</div>
				<div class="col-lg-4 col-12">
					<div class="my__account__wrapper">
						<h3 class="account__title">입력폼 샘플!!!!</h3>
						<form action="" method="post">
							<div class="account__form">
								
								<div class="input__box">
									<label for="title_id">제목 <span>*</span></label>
									<input type="text"  id="title_id" name="Title_id">
								</div>
								
								<div class="input__box">
									<label for="name_id">글쓴이 <span>*</span></label>
									<input type="text" id="name_id" name="Name_id">
								</div>
								
								<div class="input__box">
									<label for="contents">내용입력<span>*</span></label>
									<input type="text" id="contents" name="Contents" style="height:200px;">
								</div>
							
								<!-- <input type="submit" title="로그인" value="로그인"> -->
								
								<div class="form__btn">
										<button>취소</button>
										<button>확인</button>
								</div>
							</div>					
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	
<%@include file="../include/footer.jsp"%>
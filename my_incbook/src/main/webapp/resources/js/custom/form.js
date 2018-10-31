$(function() {
	$(".validationFormButton").on("click", function() {
		var validationForm = $(".validationForm");
		var validationInput = $(".validationForm input[validationText]");
		var numberOnlyArr = $(".validationForm .numberOnly");
		var isReInsert = false;
		var validationText = "";
		
		var loginIddoubleCheck = $("#checking").val();
		if(loginIddoubleCheck != null) {
			if(loginIddoubleCheck != "") {
				alert("아이디 중복 확인해 주세요.");
				return;
			}
		}

		var passwordCheck = $("#passwordChecking").val();
		if(passwordCheck != null) {
			if(passwordCheck == "false") {
				alert("비밀번호를 확인해 주세요.");
				return;
			}
		}
		
		/*폼에 빈칸이 있는지 확인*/
		for (var i=0; i<validationInput.length; i++) {
			if (isEmpty(validationInput.eq(i).val())) {
				validationText = validationInput.eq(i).attr("validationText");
				validationText += "(을)를 확인해주세요";
				alert(validationText);
				validationInput.eq(i).focus();
				return;
			}
		}
		
		/*숫자면서 숫자의 사이즈가 정해져있음*/
		for (var i=0; i<numberOnlyArr.length; i++) {
			if(numberSizeDiscriminate(numberOnlyArr.eq(i).val(), numberOnlyArr.eq(i).attr("numberSize"))
				|| isNaN(numberOnlyArr.eq(i).val())) {
				validationText = numberOnlyArr.eq(i).attr("validationText");
				validationText += "(을)를 확인해주세요";
				alert(validationText);
				numberOnlyArr.eq(i).focus();
				return;
			}
		}
		if(isReInsert) {
			alert("입력값을 확인해주세요");
			return;
		}
		alert("정상적으로 입력되었습니다.");
		validationForm.attr("method", "post")
		validationForm.submit();
	});
	
	$(".doubleCheck").on("click", function() {
		var loginId = $("#login_id").val();
		$.ajax({
			url: "/member/loginIdDoubleCheck",
			data: {
				"loginId" : loginId
			},
			type: 'GET',
			success: resultPaging
		});
	});
	
	/* 아이디 입력값에 변동이 있을경우 중복확인 누르게 함*/
	$(".doubleCheckSync").change(function() {
		$("#doubleChecked").html("<input type=\"hidden\" id=\"checking\" value=\"true\">"
								+"<strong style=\"color:black\"> * 중복확인을 눌러주세요 </strong>"		
		);
	});

	/* 비밀번호 or 비밀번호 확인이 변경 됬을때 작동*/
	$(".passwordCheck").change(function() {
		var pw = $("#password").val();
		var pwc = $("#password_check").val();
		if(pw == pwc) {
			$("#passwordChecked").html("<input type=\"hidden\" id=\"passwordChecking\" value=\"true\">"
					+"<strong style=\"color:blue\"> * 비밀번호가 일치합니다. </strong>"		
			);
		} else {
			$("#passwordChecked").html("<input type=\"hidden\" id=\"passwordChecking\" value=\"false\">"
					+"<strong style=\"color:red\"> * 비밀번호를 확인해주세요. </strong>"		
			);
		}
	});
});


/**
 * ajax로 아이디 중복확인 후 가능한 아이디인지 판별된 정보를 화면에 띄움
 */
function resultPaging(msg) {
	$("#doubleChecked").html(msg); // append로 리스트 뒷부분에 새로운 리스트 추가
}
/**
 * 숫자인지 확인한다.
 */
function isNumber(s) {
	  s += ''; // 문자열로 변환
	  s = s.replace(/^\s*|\s*$/g, ''); // 좌우 공백 제거
	  if (s == '' || isNaN(s)) return false;
	  return true;
}

/**
 * 숫자의 지정된 크기와 다른지 확인한다.
 */
function numberSizeDiscriminate(number, numberSize) {
	return number.length != numberSize;
}

/**
 * 비어있는 값인지 확인한다.
 */
function isEmpty(val) {
	return val=="";
}
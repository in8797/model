<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>homework.jsp</title>
<script>
	window.onload = function() {
		var btn = document.getElementById("btnCheck");
		btn.addEventListener("click", inputCheck);
	}

	function inputCheck() {
		//모든 항목 필수입력 체크
		var txtArr = document.querySelectorAll("textarea,[type=text]");
		for (i = 0; i < txtArr.length; i++) {
			if (txtArr[i].value == "") {
				alert(txtArr[i].id + "가 입력되지 않았습니다.");
				return;
			}
		}
		//이름은 최소 길이가 5글자 이상인지 체크하고 모두 대문자로 변경하여 출력
		if (mbName.value.length >= 5) {
			result.innerHTML += mbName.value.toUpperCase() + "<br>";
		} else {
			alert("이름은 취소 5글자 이상이여야 합니다");
			return;
		}
		//이메일은 "@"와 "."을 포함하는지 체크하여 true/false 결과 출력
		function isEmail(asValue) {
			var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
			return regExp.test(asValue); // 형식에 맞는 경우 true 리턴	
		}
		result.innerHTML += isEmail(mbEmail.value) + "<br>";
		//등록일자는 날짜 형식이 맞는지 체크하고 년도는 2015~2019년도 사이인지 체크하여 결과 출력

		//홈페이지는 http로 시작하는지 체크하여 결과 출력
		if (mbHomepage.value.match(/[http]/g)) {
			result.innerHTML += "<br> 홈페이지 체크 후 출력 : "
					+ mbHomepage.value.substr(mbHomepage.value);
		}
		//성적은 소수점 2자리까지만 입력하였는지 체크(regexp)하고 아니라면 둘째자리까지만 변경하여 div에 출력

		//비고란의  \n(엔터키) 를 <br>태그로 변환(replace)하여 출력
		var txt = document.getElementById("mbBigo").value;
		result += "<br/>" + txt.replace(/(\n|\r\n)/g, '<br>');
		//출력
		document.getElementById("result").innerHTML = result;
	}}
</script>
</head>
<body>
	<form>
		이름 <input type="text" id="mbName" value="test123" /><br> 이메일 <input
			type="text" id="mbEmail" value="t@t" /><br> 등록일자 <input
			type="text" id="mbDate" value="2014/12/12" /><br> 홈페이지 <input
			type="text" id="mbHomepage" value="httpyedam.ac" /><br> 성적 <input
			type="text" id="mbScore" value="67.123" /><br> 비고
		<textarea id="mbBigo"></textarea>
		<button type="button" id="btnCheck">입력확인</button>
	</form>
	<div id="result"></div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = init;
	function init() {
		var divresult = document.getElementById("result");
		let btn = document.getElementById("btnCheck");
		btn.addEventListener("click", function() {
			//btn.onclick = function(){};
			//document.getElementById("result").innerHTML="이벤트발생";
			//입력값 길이 출력
			var txtbigo = document.getElementById("bigo");
			divresult.innerHTML = txtbigo.value.length;
			//http://yedam/model
			divresult.innerHTML += "<br> 마지막경로 /"
					+ txtbigo.value.lastIndexOf("/");
			divresult.innerHTML += "<br> 마지막경로명"
					+ txtbigo.value.substr(txtbigo.value.lastIndexOf("/") + 1);
			//split 키워드 : 모델,객체,스트링
			var arr = txtbigo.value.split("-");
			divresult.innerHTML += "<br> 키워드 개수 " + arr.length;
			//search, pattern - 정규표현식
			divresult.innerHTML += "<br> 이메일 체크 " + isEmail(txtbigo.value);
			//replace : 공백제거
			//txtbigo.value = txtbigo.value.replace(\/sg,"");
			//(old값,new값)
		});
	}

	function isEmail(asValue) {
		var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		return regExp.test(asValue); // 형식에 맞는 경우 true 리턴	
	}
</script>
</head>
<body>
	<form>
		<input name="bigo" id="bigo" />
		<button type="button" id="btnCheck">입력 값 확인</button>
		<div id="result">결과 확인</div>
	</form>
</body>
</html>
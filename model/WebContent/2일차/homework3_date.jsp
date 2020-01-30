<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>homework3_date.jsp</title>
<script>
	window.addEventListener("load", function() {
		//버튼 클릭 이벤트 지정
		btnCalc.addEventListener("click", function() {

			var str = Date.parse(inDate.value);
			var a1 = new Date() - new Date(inDate.value);
			var a2 = Math.round(a1);
			//var dArr = str.split(",");
			//var today = new Date(dArr[0], dArr[1]-1, dArr[2]);
			//console.log(today);
			//입력날짜와 오늘 날짜까지의 일수 계산하여 div에 출력 "남은 일수는 00일입니다."
			//반올림해서 출력 할 것
			result.innerHTML = a2; 
			/* console.log(today.getFullYear());
			console.log(today.getMonth()+1);
			console.log(today.getDate());
			console.log(today.getDay());
			console.log(checkdate(text)); */
			//날짜 연산 가능함 
			/*var a = new Date() - new Date(2020,0,10);	//밀리세컨드 long int
			 console.log(a / 1000 / 60 / 60 /24 ); */
		});
	})
</script>
</head>
<body>
	날짜 카운터다운
	<br>
	<input id="inDate">
	<button type="button" id="btnCalc">계산</button>
	<div id="result"></div>
</body>
</html>
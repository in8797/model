<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>homework1_select.jsp</title>
<script>
	window.addEventListener("load", function() {
		//확인 버튼 이벤트 		
		btn.addEventListener("click", function() {
			//선택과목 수와 선택과목명을 div에 출력(다중선택이 가능함)
			var obj = document.getElementById("subject");
			var result;
			var cnt = 0;
			let subjectArr = [];

			for (i = 0; i < obj.length; i++) {
				if (obj[i].selected) {
					subjectArr[cnt] = obj[i].label;
					cnt++;
				}
			}
			result = "선택과목 수 : " + cnt;
			result += "<br/>선택과목명 : " + subjectArr;
			document.getElementById("result").innerHTML = result;
		});
	});
</script>
</head>
<body>
	<select id="subject" multiple="multiple" size="5">
		<option value="java">자바
		<option value="jsp">JSP
		<option value="spring">스프링
	</select>
	<button type="button" id="btn">확인</button>
	<div id="result"></div>
</body>
</html>
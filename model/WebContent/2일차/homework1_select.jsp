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
			//if (subject.selectedIndex > -1)
			var opt = document.createElement("p");
			opt.innerHTML = subject.options[subject.selectedIndex].text;
			result.add(opt);
			subject.remove(subject.selectedIndex);
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
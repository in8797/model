<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>json</title>
<script type="text/javascript">
	//json 객체
	let boardDTO = {
		no : 1,
		poster : "홍길동",
		subject : "첫번째글"
	};
	//String 배열
	let atrArr = [ "키위", "딸기", "오렌지" ];

	//객체배열
	let boardArr = [ {
		no : 1,
		poster : "홍길동",
		subject : "첫번째글"
	}, {
		no : 2,
		poster : "김기자",
		subject : "두번째글"
	}, {
		no : 3,
		poster : "고길동",
		subject : "세번째글"
	} ];
	//boardDTO의 작성자 출력
	document.write(boardDTO.poster +"<br>");
	
	//atrArr 두번째 과일 출력
	document.write(atrArr[1] +"<br>");
	
	//boardArr의 세번째 게시글의 제목 출력
	document.write(boardArr[2].subject +"<br>");
	
</script>
</head>
<body>

</body>
</html>
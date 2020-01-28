<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>arraytest2.jsp</title>
</head>
<body>
<input type="text" id="no">
<input type="text" id="username">
<button type="button" id="btnAdd">추가</button>
<script type="text/javascript">
	btnAdd.addEventListener("click",funcAdd);
	var arr=[];    //ArrayList
	function funcAdd() {
		//[{no:1, username:'홍길동'}, {  }, {  }]
		let obj={}; //객체 생성 = DTO
		obj.no = no.value
		obj.username = username.value
		//배열에 추가	
		arr.push(obj);
		console.log(JSON.stringify(arr));
		
	}
</script>
</body>
</html>
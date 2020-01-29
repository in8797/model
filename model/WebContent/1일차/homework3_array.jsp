<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><title>homework4_array.jsp</title>
<script src ></script>
</head>
<body>
<input type="text" id="userno">
<input type="text" id="username">
<input type="text" id="userId">
<input type="text" id="userRegDate">
<div id="result">1,홍길동,hong,2019/12/01</div>
<script>
	//div의 값을 콤마(,)로 분리하여 각각의 텍스트필드에 출력
	var res;
	var inputArr = document.getElementsByTagName("input");
	console.log(result.innerText);
	var child = result.innerText;
	console.log(child);
	var sp = child.toString().split(",");
	//div 내용을 배열로 변환  : split
	for(i in inputArr){
		inputArr[i].value = sp[i];
	}
	
//	btnAdd.addEventListener("click",funcAdd);
//  var arr = [];
//	function funcAdd(){
		//[ {no:1, username:'홍길동'},{ },{ }]
//		let obj = {};
//		obj.no = no.value
//		obj.username = username.value
		//배열에 추가
//		arr.push(obj)
//		console.log(JSON.stringify(arr));
//	}
</script>
</body>
</html>
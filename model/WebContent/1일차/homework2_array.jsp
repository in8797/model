<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>homework2_array.jsp</title>
<script>
	let txtArr = [];
	var arr = [];
	window.onload = function(){
		btnAdd.addEventListener("click",funcAdd)
		btnDelete.addEventListener("click",funcDelete)
		btnSearch.addEventListener("click",funcSearch)
	}
	function funcAdd(){
		//배열에 추가하고 배열을 div에 출력
		let obj = {};
		obj.no = arr.length;
		obj.fruits = txtFruit.value;
		//배열에 추가
		arr.push(obj);
		console.log(JSON.stringify(arr));
		result.innerHTML=JSON.stringify(arr);
	}
	function funcDelete(){
		//배열에서 삭제하고 배열을 div에 출력 delete명령어
		//delete arr[0];
		arr.splice(0,1);
		result.innerHTML=JSON.stringify(arr);
	}	
	function funcSearch(){
		//배열에서 검색해서 검색위치를 div출력
			var n;
			var input = txtFruit.value;
			for (i in arr) {
				if (arr[i].fruits == input){
					n = i;
					result.innerHTML += n;
				}
			}
	}
</script>
</head>
<body>
<input type="text" id="txtFruit">
<button type="button" id="btnAdd">추가</button>
<button type="button" id="btnDelete">삭제</button>
<button type="button" id="btnSearch">검색</button>
<div id="result"></div>
</body>
</html>
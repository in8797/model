<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>date</title>
<script type="text/javascript">
	//날짜
	var str = "2020/01/26";
	var dArr = str.split("/");
	var today = new Date(dArr[0], dArr[1]-1, dArr[2]);
	console.log(today);
	console.log(today.getFullYear());
	console.log(today.getMonth()+1);
	console.log(today.getDate());
	console.log(today.getDay());
</script>
</head>
<body>

</body>
</html>
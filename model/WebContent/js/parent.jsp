<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>parent.jsp</title>
<script type="text/javascript">
	window.addEventListener("load", function() {
		btnAddr.addEventListener("click", function() {
			window.open("popup.jsp", "pop", "width=200,height=100");
		});
	});
	function setAddr(p) {
		document.frm.addr.value = p.addr1 + "," + p.addr2;
	}
</script>
</head>
<body>
	<form id="frm" name="frm">
		주소 <input name="addr">
		<button type="button" id="btnAddr">주소검색</button>
	</form>
</body>
</html>
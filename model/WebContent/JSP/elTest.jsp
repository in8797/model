<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="co.yedam.app.board.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	속성읽기
	<br> session의 name속성
	<br> 표현식:
	<%=session.getAttribute("name")%>
	<br> EL : ${sessionScope.name }
	<br>
	<hr>
	application의 name속성<br>
	표현식 : <%=application.getAttribute("name") %><br>
	EL : ${applicationScope.name }<br>
	<hr>
	userInfo의 dept속성<br>
	표현식 : <%=((Map<String, Object>)request.getAttribute("userInfo")).get("dept") %><br>
	EL : ${requestScope.userInfo.dept }<br> <!-- requestScope 생략가능 -->
	<hr>
	board의 제목<br>
	표현식 : <%=((BoardDTO)request.getAttribute("board")).getSubject() %><br>
	EL : ${requestScope.board.subject }<br>
	<hr>
	board의 첫번째 게시글 작성자<br>
	표현식 : <%=((List<BoardDTO>)request.getAttribute("boardList")).get(0).getPoster() %><br>
	EL1 : ${requestScope.boardList[0].poster}<br>
	EL2 : 
	<%
	List<BoardDTO> bl = (List<BoardDTO>)request.getAttribute("boardList");
	BoardDTO dto = bl.get(0);
	out.print(dto.getPoster());
	%>
	<hr>
	<br> 쿠키정보
	<br> 표현식 :
	<%
		Cookie[] cookies = request.getCookies();
	%><br> EL : ${cookie.openYn.value }
	<!-- form.jsp에 cookie 객체를 받아옴 -->
	<hr>
	파라미터(배열)
	<br> 표현식 :
	<%--=request.getParameterValues("hobby")[0]--%>
	<br> EL : ${paramValues.hobby[0] }
	<br>
	<hr>
	파라미터
	<br> 표현식:
	<%=request.getParameter("name")%><br> EL: ${param.name }
	<br>
	<hr>
	헤더정보
	<br> 표현식 :
	<%=request.getHeader("User-Agent")%><br> EL:
	${header["User-Agent"] }
	<br>
	<hr>
	request
	<br> 표현식 :
	<%=request.getContextPath()%><br> EL:
	${pageContext.request.contextPath }
	<br>

</body>
</html>
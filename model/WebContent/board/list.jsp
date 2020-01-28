<%@page import="co.yedam.app.board.BoardDTO"%>
<%@page import="java.util.List"%>
<%@page import="co.yedam.app.board.BoardDAO"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags"%>
<html>
<head>
<title>게시판</title>
</head>

<body>
	<my:tags></my:tags>
	<my:boardType></my:boardType>
	<table width="80%" border=0>
		<tr>
			<td align="center">JDBC 게시판</td>
		</tr>
	</table>
	<br>

	<table width="80%" border=1 cellspacing=0>
		<tr height=30 bgcolor="#FFFF99">
			<th>번호</th>
			<th>제목</th>
			<th>글쓴이</th>
			<th>등록일</th>
			<th>조회</th>
		</tr>
		<!-- DB연결 (dbconnect.jsp)-->
		<%
			List<BoardDTO> list = null;
			if (request.getAttribute("list") != null) {
				list = (List<BoardDTO>) request.getAttribute("list");
				for (BoardDTO dto : list) {
		%>
		<tr height=28 align=center>
			<td><%=dto.getNo()%></td>
			<td><a href="view.jsp?c_no=<%=dto.getNo()%>"><%=dto.getSubject()%></a></td>
			<td><%=dto.getPoster()%></td>
			<td><%=dto.getLastpost()%></td>
			<td><%=dto.getViews()%></td>
		</tr>
		<%
			/* out.print("<tr height=28 align=center>");
								out.print("<td>" + no + "</td>");
								out.print("<td><a href=view.jsp?c_no=" + no + ">" + subject + "</a></td>");
								out.print("<td>" + poster + "</td>");
								out.print("<td>" + lastpost + "</td>");
								out.print("<td>" + views + "</td></tr>");*/

				}
			}
		%>

	</table>

	<table width="80%" border=0>
		<tr>
			<td align="right"><a href="boardCreateForm"> 글쓰기</a></td>
		</tr>
	</table>


	<br>
	<%=application.getRealPath("/")%>
	<br>
	<%=request.getHeader("User-Agent")%>
	<br>
	<%=request.getContentLength()%>

</body>
</html>
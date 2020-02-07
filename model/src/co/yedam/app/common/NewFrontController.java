package co.yedam.app.common;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.ajax.GetDeptCnt;
import co.yedam.app.board.Ajax.AjaxBoardList;
import co.yedam.app.board.Ajax.AjaxBoardOne;
import co.yedam.app.users.command.DeleteUsers;
import co.yedam.app.users.command.GetUsers;
import co.yedam.app.users.command.GetUsersList;
import co.yedam.app.users.command.InsertUsers;
import co.yedam.app.users.command.ManageUsers;
import co.yedam.app.users.command.UpdateUsers;

/**
 * Servlet implementation class NewController
 */
//@WebServlet(description = "메인컨트롤러", urlPatterns = { "/NewController" })
@WebServlet("*.do") // localhost/model/ ////.do
public class NewFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HashMap<String, Command> cont = new HashMap<String, Command>();

	public NewFrontController() {
		super();
	}

	public void init(ServletConfig config) throws ServletException {
		// 해쉬맵 구조를 put()로 적어준다
//		cont.put("/index.do", new IndexCommand()); // 홈페이지 호출
//		board
//		등록
		cont.put("/boardCreate.do", new BoardCommandCreate());
//		수정
//		삭제
//		상세조회
//		목록
		cont.put("/boardlist.do", new BoardCommandList()); // "url"
//		수정폼
		cont.put("/boardCreateForm.do", new BoardCommandCreateFrom());
//		등록폼

		// ajax
		cont.put("/ajaxBoardList.do", new AjaxBoardList());
		cont.put("/ajaxBoardOne.do", new AjaxBoardOne());

		// 댓글 관리

		// 사용자 관리
		cont.put("/ManageUsers.do", new ManageUsers());
		cont.put("/ajax/InsertUsers.do", new InsertUsers());
		cont.put("/ajax/UpdateUsers.do", new UpdateUsers());
		cont.put("/ajax/DeleteUsers.do", new DeleteUsers());
		cont.put("/ajax/GetUsers.do", new GetUsers());
		cont.put("/ajax/GetUsersList.do", new GetUsersList());

		
		cont.put("/ajax/GetDeptCnt.do", new GetDeptCnt());
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 실행할 class 객체를 찾아주는 부문 get()
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String path = uri.substring(context.length());

		// 로그 처리
		System.out.println("path=" + path);
		// 권한 체그

		Command commandImpl = cont.get(path); // 실행 클래스를 선택한다.
		String page = null;
		if (commandImpl != null) {
			page = commandImpl.excute(request, response);
			if (page != null && !page.isEmpty()) {
				if (page.startsWith("redirect:")) {
					String view = page.substring(9);
					response.sendRedirect(view);
				} else if (page.startsWith("ajax:")) {
					response.getWriter().append(page.substring(5));
				} else if (page.startsWith("script:")) {
					response.getWriter().append("<script>").append(page.substring(7)).append("</script>");

				} else {
					request.getRequestDispatcher(page).forward(request, response);
				}
//			request.getRequestDispatcher(page).forward(request, response);
//			RequestDispatcher dispatcher = request.getRequestDispatcher(page);
//			dispatcher.forward(request, response);
			} else {
				response.getWriter().append("잘못된 요청");
			}

		}
	}
}

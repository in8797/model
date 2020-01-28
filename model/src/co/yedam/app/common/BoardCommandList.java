package co.yedam.app.common;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.board.BoardDAO;
import co.yedam.app.board.BoardDTO;

public class BoardCommandList implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BoardDAO dao = new BoardDAO();
		List<BoardDTO> list = dao.selectList();
		request.setAttribute("list", list);

		return "board/list.jsp";
	}

}

package co.yedam.app.common;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.board.BoardDAO;
import co.yedam.app.board.BoardDTO;

public class BoardCommandCreate implements Command{

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//파라미터
		BoardDTO dto = new BoardDTO();
		dto.setPoster(request.getParameter("poster"));
		dto.setSubject(request.getParameter("subject"));
		dto.setContents(request.getParameter("contents"));
		
		//등록처리
		BoardDAO dao = new BoardDAO();
		dao.insert(dto);
		//목록으로 포워드
		
		return "/boardList";
	}

}

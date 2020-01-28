package test;

import co.yedam.app.board.BoardDAO;
import co.yedam.app.board.BoardDTO;

public class BoardDAOClient {
	public static void main(String[] args) {
		BoardDTO dto = new BoardDTO();
		BoardDAO dao = new BoardDAO();
		dto.setPoster("홍홍홍");
		dto.setSubject("dao test");
		dto.setContents("dato test입니다.");
		dao.insert(dto);
		
	}
}

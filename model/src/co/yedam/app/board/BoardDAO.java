package co.yedam.app.board;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BoardDAO extends DAO { // 상속받음
//추가
	public int insert(BoardDTO dto) {
		int r = 0;
		try {
			String sql = "insert into board (no,poster,subject,contents,lastpost,views)"
					+ " values((select nvl(max(no),0)+1 from board) ,?,?,?, sysdate,1)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getPoster());
			psmt.setString(2, dto.getSubject());
			psmt.setString(3, dto.getContents());
			r = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return r;

	}

//수정
	public int update(BoardDTO dto) {
		int r = 0;
		try {
			String sql = "update board set poster=?,subject=?,contents=? where no=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getSubject());
			psmt.setString(2, dto.getContents());
			psmt.setInt(3, dto.getNo());
			r = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return r;

	}
//삭제
	public int delect(BoardDTO dto) {
		int r = 0;
		try {
			String sql = "delete board where no=?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, dto.getNo());
			r = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return r;

	}
//단건조회
	public BoardDTO selectOne(int no) {
		BoardDTO dto = new BoardDTO();
		try {
			String sql = "select * from board where no=?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, no);
			rs = psmt.executeQuery();
			if (rs.next()) {
				dto.setNo(rs.getInt("no"));
				dto.setPoster(rs.getString("poster"));
				dto.setSubject(rs.getString("subject"));
				dto.setSubject(rs.getString("contents"));
//				dto.setLastpost(rs.getDate("lastpost"));
				dto.setViews(rs.getInt("views"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	}

//목록조회
	public List<BoardDTO> selectList() {
		List<BoardDTO> list = new ArrayList<BoardDTO>();
		// 1.DB 연결

		try {
			// 2.쿼리 실행
			String sql = "select * from board order by no desc";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery(sql);
			// 3.결과 저장
			while (rs.next()) {
				BoardDTO dto = new BoardDTO();
				dto.setNo(rs.getInt("no"));
				dto.setPoster(rs.getString("poster"));
				dto.setSubject(rs.getString("subject"));
				dto.setSubject(rs.getString("contents"));
//				dto.setLastpost(rs.getDate("lastpost"));
				dto.setViews(rs.getInt("views"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		// 4.연결 해제
		return list;
	}
}

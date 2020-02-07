package co.yedam.app.ajax;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import co.yedam.app.board.DAO;

public class ChartDAO extends DAO{
	
	public List<Map<String, Object>> getDetpCnt(){
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		try {
			String sql = "select count(employee_id) cnt, department_name\r\n" + 
					"from employees e, departments d\r\n" + 
					"where d.department_id = e.department_id\r\n" + 
					"group by department_name";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next()) {
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("department_name",rs.getString("department_name"));
				map.put("cnt",rs.getInt("cnt"));
				list.add(map);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

}

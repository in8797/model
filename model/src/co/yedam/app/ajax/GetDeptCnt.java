package co.yedam.app.ajax;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.common.Command;
import net.sf.json.JSONArray;

public class GetDeptCnt implements Command{

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//ChartDAO 
		ChartDAO dao = new ChartDAO();
		List<Map<String, Object>> list = dao.getDetpCnt();
		
//		List<Map<String, Object>> list1 = dao.getDetpCnt();
//		
//		List<Map<String, Object>> list2 = dao.getDetpCnt();
//		
//		Map<String, Object> map = new HashMap<String, Object>();
//		map.put("char1", list);
//		map.put("char2", list1);
//		map.put("char3", list2);
		//JSON String 변환
		String result = JSONArray.fromObject(list).toString();

		return "ajax:" + result;
	}

}

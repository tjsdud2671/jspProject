package study2.ajax1;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import study.database.LoginDAO;
import study.database.LoginVO;

@WebServlet("/ajaxTest4")
public class AjaxTest4 extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
		
		LoginDAO dao = new LoginDAO();
		
		LoginVO vo = dao.getLoginSearch(mid);
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("mid", vo.getMid());
		map.put("name", vo.getName());
		map.put("point", vo.getPoint()+"");
		map.put("todayCount", vo.getTodayCount()+""); //스트링형식으로 바꿈
	
		System.out.println("map :" + map);
		// JSON형식의 자료로 변경처리 라이브러리 주소 : json-simple/downloads
		JSONObject jObj = new JSONObject(map);
		System.out.println("jobj : " + jObj);
		
		// JSON객체를 문자열로 변경처리
		String str = jObj.toJSONString();
		System.out.println("str : " + str);
		
		
		
		response.getWriter().write(str);
		
	}

}

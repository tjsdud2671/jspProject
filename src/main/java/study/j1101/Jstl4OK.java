package study.j1101;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/j1101/jstl4OK")
public class Jstl4OK extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Jstl4VO vo = new Jstl4VO();
		
		vo.setName("홍길동");
		vo.setAge(25);
		vo.setGender("여자");
		vo.setJob("학생");
		vo.setAddress("서울");
		
		request.setAttribute("vo", vo);
		
		String viewPage = "/study/1101_JSTL/jstl4Res.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
		
	}

}

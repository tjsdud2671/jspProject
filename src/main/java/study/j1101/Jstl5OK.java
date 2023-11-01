package study.j1101;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/j1101/jstl5OK")
public class Jstl5OK extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<Jstl4VO> vos = new ArrayList<>();
		
		Jstl4VO vo = new Jstl4VO();
		
		vo.setName("홍길동");
		vo.setAge(25);
		vo.setGender("여자");
		vo.setJob("학생");
		vo.setAddress("서울");
		vos.add(vo);
		
		vo = new Jstl4VO();
		vo.setName("김말숙");
		vo.setAge(23);
		vo.setGender("여자");
		vo.setJob("회사원");
		vo.setAddress("청주");
		vos.add(vo);
		
		vo = new Jstl4VO();
		vo.setName("이기자");
		vo.setAge(38);
		vo.setGender("남자");
		vo.setJob("공무원");
		vo.setAddress("파천");
		vos.add(vo);
		
		vo = new Jstl4VO();
		vo.setName("오하늘");
		vo.setAge(20);
		vo.setGender("여자");
		vo.setJob("학생");
		vo.setAddress("청주");
		vos.add(vo);
		
		vo = new Jstl4VO();
		vo.setName("고인돌");
		vo.setAge(30);
		vo.setGender("남자");
		vo.setJob("군인");
		vo.setAddress("괴산");
		vos.add(vo);
		
		vo = new Jstl4VO();
		vo.setName("오혁");
		vo.setAge(31);
		vo.setGender("남자");
		vo.setJob("가수");
		vo.setAddress("서울");
		vos.add(vo);
		
		request.setAttribute("vos", vos);
		
		String viewPage = "/study/1101_JSTL/jstl5Res.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
		
	}

}

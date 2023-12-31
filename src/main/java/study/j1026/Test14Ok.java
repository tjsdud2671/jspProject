package study.j1026;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/j1026/test14Ok")
public class Test14Ok extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		// Front에서 넘어온 값을 변수에 담아준다.
		String name = request.getParameter("name")==null ? "" : request.getParameter("name");
		int age = (request.getParameter("age")==null || request.getParameter("age").equals("")) ? 0 : Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender")==null ? "남자" : request.getParameter("gender");
		String[] hobbys = request.getParameterValues("hobby");
		String job = request.getParameter("job");
		
		// 기본적으로 다시 체크해야할것들을 체크해 준다.(잘못된 자료는 다시 돌려보낸다. 정상적인 자료는 DB에 저장시켜준다.)
		if(name.equals("") || age < 20) {
			// 가입조건을 만족하지 않았기에 다시 가입창으로 전송시켜준다.
			response.sendRedirect(request.getContextPath()+"/study/1026/test14.jsp?flag=no");
		}
		else {
			System.out.println("name : " + name);
			System.out.println("age : " + age);
			System.out.println("gender : " + gender);
			String hobby = "";
			for(String h : hobbys) {
			  System.out.println("h : " + h);
			  hobby += h + "/";
			}
			hobby = hobby.substring(0, hobby.length()-1);
			System.out.println("hobby : " + hobby);
			System.out.println("job : " + job);
			
			
			Test13VO vo = new Test13VO();
			
			vo.setName(name);
			vo.setAge(age);
			vo.setGender(gender);
			vo.setHobby(hobby);
			vo.setJob(job);
			request.setAttribute("vo", vo);
			
			
			
			String viewPage = "/study/1026/test14Res.jsp";
			
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}
	}
}

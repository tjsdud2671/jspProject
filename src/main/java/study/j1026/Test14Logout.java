package study.j1026;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/j1026/test14Logout")
public class Test14Logout extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String name = request.getParameter("name")==null ? "" : request.getParameter("name");
		
		
		/*
		//response.sendRedirect() 이용방법
		PrintWriter out = response.getWriter();
		out.println("<script>");
		out.println("alert('"+name+"님 로그아웃 되었습니다.');");
		out.println("location.href='"+request.getContextPath()+"/study/1026/test14.jsp';");
		out.println("</script>");
		*/
		
		//RequestDispatcher 이용방법
		request.setAttribute("name", name);
		String viewPage = "/study/1026/test14Msg.jsp";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
		
	}

}

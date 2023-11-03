package study.database;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/database/joinOK")
public class JoinOK extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
		String pwd = request.getParameter("pwd")==null ? "" : request.getParameter("pwd");
		String name = request.getParameter("name")==null ? "" : request.getParameter("name");
		
		
		
		LoginDAO dao = new LoginDAO();
		LoginVO vo = new LoginVO();
		vo.setMid(mid);
		vo.setPwd(pwd);
		vo.setName(name);
		
		int res = dao.setJoinOK(vo);
		
		PrintWriter out = response.getWriter();
		if(res != 0) {
			out.println("<script>");
			out.println("alert('회원가입성공');");
			out.println("location.href='"+request.getContextPath()+"/study/database/login.jsp';");
			out.println("</script>");
		}
		else {
			out.println("<script>");
			out.println("alert('회원가입실패');");
			out.println("location.href='"+request.getContextPath()+"/study/database/join.jsp';");
			out.println("</script>");
		}
	}
}

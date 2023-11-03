package study.database;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/database/deleteOK")
public class DeleteOK extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String mid = (String) session.getAttribute("sMid");
		
		LoginDAO dao = new LoginDAO();
		int res = dao.setDeleteOK(mid);
		
		PrintWriter out = response.getWriter();
		if(res != 0) {
			session.invalidate();
			dao.connClose();
			out.println("<script>");
			out.println("alert('"+mid+"님 탈퇴 되셨습니다.');");
			out.println("location.href='"+request.getContextPath()+"/study/database/login.jsp';");
			out.println("</script>");
		}
		else {
			out.println("<script>");
			out.println("alert('탈퇴실패');");
			out.println("location.href='"+request.getContextPath()+"/study/database/join.jsp';");
			out.println("</script>");
		}
	}

}

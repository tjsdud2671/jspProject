package study2.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginOkCommand implements LoginInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid")==null?"":request.getParameter("mid");
		String pwd = request.getParameter("pwd")==null?"":request.getParameter("pwd");
		
		LoginDAO dao = new LoginDAO();
		
		LoginVO vo  = dao.getLoginCheck(mid, pwd);
		if(vo.getName() != null) {
			// 로그인 성공시 처리해야 할 내용들을 기술하기
			// 지금은 생략함
			
			// 메세지 처리
			
			//String msg = "이곳은 서비스 작업 완료 후 메세지를 담아서 보냅니다.";
			request.setAttribute("msg", mid+"님 로그인 되었습니다.");
			request.setAttribute("url", request.getContextPath()+"/memberMain.lo");
		}
		else {
			request.setAttribute("msg", "로그인 실패");
			request.setAttribute("url", request.getContextPath()+"/login.lo");
			
		}
			
		}
	}



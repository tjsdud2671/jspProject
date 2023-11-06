package guest;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/GuestList")
public class GuestList extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		GuestDAO dao = new GuestDAO();
		
		// 1.현재 페이지 번호를 구한다.
		int pag = request.getParameter("pag")==null ? 1 : Integer.parseInt(request.getParameter("pag"));
		
		
		// 2.한페이지의 분량을 결정한다.
		int pageSize = request.getParameter("pageSize")==null ? 2 : Integer.parseInt(request.getParameter("pageSize"));
		
		// 3.총 레코드 건수를 구한다.(sql명령어중 count함수 사용)
 		int totRecCnt = dao.getTotRecCnt();
		
		// 4.총 페이지 건수를 구한다.
 		int totPage = (totRecCnt % pageSize) == 0 ? (totRecCnt / pageSize) : (totRecCnt / pageSize) + 1 ;
 		
 		// 5.현재 페이지에 출력할 시작 인덱스번호를 구한다.
 		int strIndexNo = (pag - 1) * pageSize;
 		
 		// 6.현재 화면에 표시될 시작번호를 구한다.
		int curScrStratNo = totRecCnt - strIndexNo;
		
		// 블록 페이지 처리 (시작블록의 번호를 0번으로 처리)
		// 1. 블록의 크기결정 (3)
		int blockSize = 3;
		
		// 2. 현재페이지가 속한 블록 번호를 구한다.(예: 총 레코드 개수 38개일 경우, 1/2/3페이지는 0블록, 4/5/6페이지는 1블록, 7/8페이지는 2블록)
		int curBlock = (pag - 1) / blockSize;
		
		// 3. 마지막블록을 구한다.
		int lastBlock = (totPage -1) / blockSize;
		
		// 지정된 페이지의 자료를 요청한 페이지의 분량만큼 가져온다.
		ArrayList<GuestVO> vos = dao.getGuestList(strIndexNo,pageSize);
		
		request.setAttribute("vos", vos);
		request.setAttribute("pag", pag);
		request.setAttribute("pageSize", pageSize);
		request.setAttribute("totPage", totPage);
		request.setAttribute("curScrStratNo", curScrStratNo);
		request.setAttribute("blockSize", blockSize);
		request.setAttribute("curBlock", curBlock);
		request.setAttribute("lastBlock", lastBlock);
		
		String viewPage = "/guest/guestList.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
}

package admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MainCommand implements AdminInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 초기화면에 상품이미지(title image)를 랜덤하게 올려주기
		int mainImage = (int) (Math.random()*1) + 9;
		int mainImage2 = (int) (Math.random()*1) + 11;
		int mainImage3 = (int) (Math.random()*1) + 2;
		
		// 메인 화면에 처리해야할 내용들...
		
		
		
		request.setAttribute("mainImage", mainImage);
		request.setAttribute("mainImage2", mainImage2);
		request.setAttribute("mainImage3", mainImage3);
	}

}

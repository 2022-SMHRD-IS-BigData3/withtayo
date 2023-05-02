package com.henry.bookingController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.henry.testEntity.Book_Info;
import com.henry.testEntity.UniversalDAO;

@WebServlet(asyncSupported = true, urlPatterns = { "/Cancel" })
public class CancelHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
	 	Book_Info theBooker = (Book_Info)request.getAttribute("bookedInfo");
		
		HttpSession sesh = request.getSession();
		
		// invalidate 하면 안됨!!!! (로그인까지 무효됨)
		sesh.removeAttribute("bookedInfo");

		// 예약정보 삭제
		// 내역에 canceled 삽입해서 인서트
		UniversalDAO dao = new UniversalDAO();
		int result = dao.cancelUpdate(theBooker); 
		
	 	
	}

}

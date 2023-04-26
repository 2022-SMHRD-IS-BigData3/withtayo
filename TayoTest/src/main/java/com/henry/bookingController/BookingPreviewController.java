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

@WebServlet("/BookingPrev")
public class BookingPreviewController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 나중에 길찾기 > 알림 클릭> 여기 로 이을 때 수정할 것
		// 현재는 가데이터 사용함
		UniversalDAO dao = new UniversalDAO();
		Book_Info bookVO = dao.getBookingInfo();
		
		// session? request?
		
		response.setContentType("text/html;charset=utf-8");
		
		HttpSession sesh = request.getSession();
		sesh.setAttribute("bookedInfo", bookVO);
		
		response.sendRedirect("booking.jsp");
	
	}

}

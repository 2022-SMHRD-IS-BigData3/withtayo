package com.henry.bookingController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.henry.testEntity.Book_Info;
import com.henry.testEntity.Passenger;
import com.henry.testEntity.UniversalDAO;

@WebServlet("/BookingPrev")
public class BookingPreviewController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		HttpSession sesh = request.getSession();
		
		Passenger pVO = (Passenger)sesh.getAttribute("whoLoggedIn");
		
		Book_Info bInfoVO = new Book_Info();
		bInfoVO.setP_id(pVO.getP_id());
		bInfoVO.setRouteid(request.getParameter("routeid"));
		bInfoVO.setRouteno(request.getParameter("routeno"));
		bInfoVO.setArrvname(request.getParameter("arrvnm"));
		bInfoVO.setArrvnode(request.getParameter("arrvid"));
		bInfoVO.setDprtname(request.getParameter("dprtnm"));
		bInfoVO.setDprtnode(request.getParameter("dprtid"));
		
		UniversalDAO dao = new UniversalDAO();
		int result = dao.bookPrev(bInfoVO);
		
		response.setContentType("text/html;charset=utf-8");
		
		if(result>0) {
			
			sesh.setAttribute("bookedInfo", bInfoVO);
			
		//	response.sendRedirect("booking.jsp");
		
		}else {
			
			System.out.println("빨리클릭하지 마");
			
			sesh.setAttribute("bookedInfo", bInfoVO);
			
		//	response.sendRedirect("booking.jsp");
			
		}
		
	
	}

}

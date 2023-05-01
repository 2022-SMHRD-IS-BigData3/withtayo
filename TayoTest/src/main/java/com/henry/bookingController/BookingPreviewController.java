package com.henry.bookingController;

import java.io.IOException;
import java.io.PrintWriter;

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
		Book_Info result = dao.bookPrev(bInfoVO);
		
		// 셀렉트도 다시 할 것
		
		System.out.println(result.getBooktime().toString());
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		if(result!=null) {
			
			sesh.setAttribute("bookedInfo", result);
			
			response.sendRedirect("booking.jsp");
			
			out.write("YES");
		
		}
		
	
	}

}

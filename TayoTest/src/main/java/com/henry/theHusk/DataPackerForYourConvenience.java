package com.henry.theHusk;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.henry.testEntity.Book_Info;
import com.henry.testEntity.Passenger;
import com.henry.testEntity.UniversalDAO;

public class DataPackerForYourConvenience implements TheHugeTool{

	@Override
	public String exteeerminaaaate(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
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
		
	//	System.out.println(result.getBooktime().toString());
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		if(result!=null) {
			
			sesh.setAttribute("bookedInfo", result);
			
		//	response.sendRedirect("booking.jsp");
			
			out.write("YES");
			
			out.flush();
		
		}
		
		return null;
	}

	
	
}

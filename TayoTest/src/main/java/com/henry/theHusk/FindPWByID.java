package com.henry.theHusk;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.henry.testEntity.Passenger;
import com.henry.testEntity.UniversalDAO;

public class FindPWByID implements TheHugeTool{

	@Override
	public String exteeerminaaaate(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		String p_id = request.getParameter("id");
		String p_ph = request.getParameter("phone");
	
		Passenger psg = new Passenger();
		psg.setP_id(p_id);
		psg.setP_ph(p_ph);
		
		UniversalDAO dao = new UniversalDAO();
		Passenger resultVO = dao.findPSGPw(psg);
		
		request.setAttribute("yourInfo", resultVO);
		
		return "findByPhone.jsp";
	}

}

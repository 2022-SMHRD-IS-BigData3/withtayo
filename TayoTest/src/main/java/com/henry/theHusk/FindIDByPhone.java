package com.henry.theHusk;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.henry.testEntity.Passenger;
import com.henry.testEntity.UniversalDAO;

public class FindIDByPhone implements TheHugeTool{

	@Override
	public String exteeerminaaaate(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		String p_ph = request.getParameter("phone");
		
		UniversalDAO dao = new UniversalDAO();
		
		Passenger psg = dao.getIdByPH(p_ph);
		
		response.setCharacterEncoding("UTF-8");
		request.setAttribute("yourId", psg);
		
		return "findBy.jsp";
	}

}

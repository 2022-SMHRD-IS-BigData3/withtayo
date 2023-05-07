package com.henry.theHusk;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.henry.testEntity.Passenger;
import com.henry.testEntity.Recent;
import com.henry.testEntity.UniversalDAO;

public class SearchHistoryHandler implements TheHugeTool{

	@Override
	public String exteeerminaaaate(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		HttpSession sesh = request.getSession();
		
		Passenger loggedIn = (Passenger)sesh.getAttribute("whoLoggedIn");
	
		String p_id = loggedIn.getP_id();
		
		String dprtName = request.getParameter("dprtName");
		String arrvName = request.getParameter("arrvName");
		
		Recent recVO = new Recent();
		recVO.setP_id(p_id);
		recVO.setRec_dprt(dprtName);
		recVO.setRec_arrv(arrvName);
		
		UniversalDAO dao = new UniversalDAO();
		int result = dao.addRecent(recVO);
		
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		out.print(result);
		
		out.flush();
		
		return null;
	}

}

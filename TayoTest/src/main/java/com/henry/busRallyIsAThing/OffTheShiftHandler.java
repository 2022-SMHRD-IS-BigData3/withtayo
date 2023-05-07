package com.henry.busRallyIsAThing;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.henry.testEntity.Shift;
import com.henry.testEntity.UniversalDAO;
import com.henry.theHusk.TheHugeTool;

public class OffTheShiftHandler implements TheHugeTool{

	@Override
	public String exteeerminaaaate(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		HttpSession sesh = request.getSession();
		
		Shift thisShift = (Shift)sesh.getAttribute("thisShift");
		
		UniversalDAO dao = new UniversalDAO();
		dao.offTheShift(thisShift);
		
		sesh.removeAttribute("driver");
		
		sesh.removeAttribute("thisShift");
		
		sesh.invalidate();
	
		return "redir:P/Effing-driverLogging.boom";
	}

}

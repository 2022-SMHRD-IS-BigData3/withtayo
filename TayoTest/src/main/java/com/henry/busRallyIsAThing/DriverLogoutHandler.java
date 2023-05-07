package com.henry.busRallyIsAThing;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.henry.theHusk.TheHugeTool;

public class DriverLogoutHandler implements TheHugeTool{

	@Override
	public String exteeerminaaaate(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		HttpSession sesh = request.getSession();

		request.removeAttribute("driver");
	
		sesh.invalidate();
		
		return "redir:P/Effing-driverLogging.boom";
	}

}

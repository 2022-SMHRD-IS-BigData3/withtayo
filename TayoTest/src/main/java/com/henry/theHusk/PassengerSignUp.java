package com.henry.theHusk;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class PassengerSignUp implements TheHugeTool{
	// 승객, 기사 공용임
	@Override
	public String exteeerminaaaate(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		String identifier = request.getParameter("ident");

		HttpSession sesh = request.getSession();

		sesh.setAttribute("userCategory", identifier);
		
		// response.getWriter().write("EffinguniversalSignup.jsp"); // ajax의 response에 줄거
		
		return "universalSignup.jsp";
	}

}

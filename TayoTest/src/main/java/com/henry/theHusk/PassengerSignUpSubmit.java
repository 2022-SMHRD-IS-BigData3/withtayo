package com.henry.theHusk;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.henry.testEntity.Passenger;
import com.henry.testEntity.UniversalDAO;

public class PassengerSignUpSubmit implements TheHugeTool{

	@Override
	public String exteeerminaaaate(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		String p_id = request.getParameter("p_id");
		String p_pw = request.getParameter("p_pw");
		String p_ph = request.getParameter("p_ph");
		Passenger vo = new Passenger(p_id,p_pw,p_ph);
		UniversalDAO dao = new UniversalDAO();
		int row = dao.pjoin(vo);
		if(row>0) {
			HttpSession sesh = request.getSession();
			sesh.setAttribute("whoLoggedIn", vo);
			return "redir:P/Effing-testSearch.quack";
			
		}else {
			return "redir:P/Effing-universalSignup.quack";
		}
		
	}

}

package com.henry.theHusk;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.henry.testEntity.Passenger;
import com.henry.testEntity.UniversalDAO;

public class ChangePSGPHHandler implements TheHugeTool{

	@Override
	public String exteeerminaaaate(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		HttpSession sesh = request.getSession();
		
		Passenger loggedIn = (Passenger)sesh.getAttribute("whoLoggedIn");
	
		String p_id=loggedIn.getP_id();
		String p_ph=request.getParameter("p_ph");
	
		Passenger vo =new Passenger();
		vo.setP_id(p_id);
		vo.setP_ph(p_ph);
	
		UniversalDAO dao =new UniversalDAO();
		int row =dao.p_ph(vo);
	
		if (row>0) {
			sesh.setAttribute("whoLoggedIn", vo); // fuuuuuuu  // should be a fresh-out-of-the-db
			return "redir:P/Effing-mypage.quack";
		}
		else {
			return "redir:P/Effing-loggingMain.quack";
		}
		
	}

}

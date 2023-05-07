package com.henry.theHusk;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.henry.testEntity.Passenger;
import com.henry.testEntity.UniversalDAO;

public class PassengerLogin implements TheHugeTool{

	public String exteeerminaaaate(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String p_id = request.getParameter("p_id");
		String p_pw = request.getParameter("p_pw");

		Passenger pVO = new Passenger();
		pVO.setP_id(p_id);
		pVO.setP_pw(p_pw);
		
		UniversalDAO dao = new UniversalDAO();
		Passenger resultVO = dao.pLogin(pVO);
		
		HttpSession sesh = request.getSession();
		
		if(resultVO != null) {
			sesh.setAttribute("whoLoggedIn", resultVO);
			return "redir:P/Effing-testSearch.quack";
		}else {
			return "redir:P/Effing-loggingMain.quack";
		}
		
	}
}

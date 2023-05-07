package com.henry.theHusk;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.henry.testEntity.Passenger;
import com.henry.testEntity.UniversalDAO;

public class RevokePSGMembership implements TheHugeTool{

	@Override
	public String exteeerminaaaate(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		HttpSession sesh = request.getSession();
		
		Passenger loggedIn = (Passenger)sesh.getAttribute("whoLoggedIn");
		String p_id=loggedIn.getP_id();
		String p_pw=request.getParameter("p_pw");
		
        Passenger vo= new Passenger();
        vo.setP_id(p_id);
        vo.setP_pw(p_pw);
        
        UniversalDAO dao = new UniversalDAO();
        int row = dao.revoke(vo);
        
		if(row>0) {
		//	request.setAttribute("revoke", vo); // aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaarg
			sesh.removeAttribute("whoLoggedIn");
			sesh.invalidate();
			return "redir:P/Effing-loggingMain.jsp";
			
		}else {
			return "redir:P/Effing-mypage.quack";
		}
		
	}

}

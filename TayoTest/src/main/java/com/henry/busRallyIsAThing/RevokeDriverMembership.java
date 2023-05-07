package com.henry.busRallyIsAThing;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.henry.testEntity.Driver;
import com.henry.testEntity.UniversalDAO;
import com.henry.theHusk.TheHugeTool;

public class RevokeDriverMembership implements TheHugeTool{

	@Override
	public String exteeerminaaaate(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		HttpSession sesh = request.getSession();
		
		Driver loggedIn = (Driver)sesh.getAttribute("driver");
		String d_id = loggedIn.getD_id();
		String d_pw = request.getParameter("d_pw");
		
        Driver vo = new Driver(d_id,d_pw);
        vo.setD_id(d_id);
        vo.setD_pw(d_pw);
        
        UniversalDAO dao = new UniversalDAO();
        int row = dao.D_revoke(vo);
        
		if(row>0) {
		//	request.setAttribute("D_revoke", vo); // wadda heck is this for?
			sesh.removeAttribute("driver");
			sesh.invalidate();
			return "loggingMain.jsp";
			
		}else {
			return "redir:P/Effing-mypage.boom";
		}
		
	}

}

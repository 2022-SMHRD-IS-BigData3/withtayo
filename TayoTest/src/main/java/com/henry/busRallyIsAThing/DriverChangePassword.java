package com.henry.busRallyIsAThing;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.henry.testEntity.Driver;
import com.henry.testEntity.UniversalDAO;
import com.henry.theHusk.TheHugeTool;

public class DriverChangePassword implements TheHugeTool{

	@Override
	public String exteeerminaaaate(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		HttpSession sesh = request.getSession();
		
		Driver loggedIn = (Driver)sesh.getAttribute("driver");
	
		String d_id = loggedIn.getD_id();
		String d_pw = request.getParameter("d_pw");
		String nd_pw = request.getParameter("nd_pw");
		String nd_pw1 = request.getParameter("nd_pw1");
		
		Driver vo =new Driver(d_id,nd_pw,nd_pw1);
		vo.setD_id(d_id);
		vo.setD_pw(d_pw);
		vo.setNd_pw(nd_pw);
		vo.setNd_pw1(nd_pw1);
		
		UniversalDAO dao =new UniversalDAO();
		
		int row = dao.nd_pw(vo);
		if(row>0) {
		//	request.setAttribute("nd_pw", vo); // ???? o h m y g o d
			return "driverMypage.jsp";
			
		}else {
			return "redir:P/Effing-loggingMain.boom";
		}
		
	}

}

package com.henry.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.henry.testEntity.Driver;
import com.henry.testEntity.Passenger;
import com.henry.testEntity.UniversalDAO;


@WebServlet("/D_Revoke")
public class D_RevokeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		HttpSession sesh = req.getSession();
		
		Driver loggedIn = (Driver)sesh.getAttribute("driver");
		String d_id=loggedIn.getD_id();
		String d_pw=req.getParameter("d_pw");
        Driver vo= new Driver(d_id,d_pw);
        vo.setD_id(d_id);
        vo.setD_pw(d_pw);
        UniversalDAO dao = new UniversalDAO();
        
        int row = dao.D_revoke(vo);
		if(row>0) {
			req.setAttribute("D_revoke", vo);
			RequestDispatcher rd = req.getRequestDispatcher("loggingMain.jsp");
			rd.forward(req, res);
			
		}else {
			res.sendRedirect("mypage.jsp");
		}
        
        
		
		
	
	}

}
package com.henry.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.henry.testEntity.Passenger;
import com.henry.testEntity.UniversalDAO;


@WebServlet("/Revoke")
public class RevokeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		HttpSession sesh = req.getSession();
		
		Passenger loggedIn = (Passenger)sesh.getAttribute("whoLoggedIn");
		String p_id=loggedIn.getP_id();
		
		String p_pw=req.getParameter("p_pw");
        Passenger vo= new Passenger(p_id,p_pw);
        vo.setP_id(p_id);
        vo.setP_pw(p_pw);
        UniversalDAO dao = new UniversalDAO();
        
        int row = dao.revoke(vo);
		if(row>0) {
			req.setAttribute("revoke", vo);
			RequestDispatcher rd = req.getRequestDispatcher("loggingMain.jsp");
			rd.forward(req, res);
			
		}else {
			res.sendRedirect("mypage.jsp");
		}
        
        
		
		
	
	}

}

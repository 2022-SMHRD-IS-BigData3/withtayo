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


@WebServlet("/Mypage_p_ph")
public class Mypage_p_phController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	
		HttpSession sesh = req.getSession();
		
		Passenger loggedIn = (Passenger)sesh.getAttribute("whoLoggedIn");
	
		String p_id=loggedIn.getP_id();
		
		String p_ph=req.getParameter("p_ph");
	
		Passenger vo =new Passenger(p_ph,p_id);
		vo.setP_id(p_id);
		vo.setP_ph(p_ph);
	
		UniversalDAO dao =new UniversalDAO();
	
		int row =dao.p_ph(vo);
	
		if (row>0) {
		
			req.setAttribute("p_ph", vo);
			RequestDispatcher rd = req.getRequestDispatcher("mypage.jsp");
			rd.forward(req, res);
			}
		else {
			res.sendRedirect("loggingMain.jsp");
		}
		}

}

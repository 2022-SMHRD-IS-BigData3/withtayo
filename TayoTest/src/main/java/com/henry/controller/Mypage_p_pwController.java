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


@WebServlet("/Mypage_p_pw")
public class Mypage_p_pwController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		HttpSession sesh = req.getSession();
		
		Passenger loggedIn = (Passenger)sesh.getAttribute("whoLoggedIn");
	
		String p_id=loggedIn.getP_id();
		
		String p_pw = req.getParameter("p_pw");
		String np_pw = req.getParameter("np_pw");
		String np_pw1 = req.getParameter("np_pw1");
		
		Passenger vo =new Passenger(p_pw,np_pw,p_id);
		vo.setP_id(p_id);
		vo.setP_pw(p_pw);
		vo.setNp_pw1(np_pw1);
		vo.setNp_pw(np_pw);
		
		UniversalDAO dao =new UniversalDAO();
		
		int row = dao.np_pw(vo);
		if(row>0) {
			req.setAttribute("np_pw", vo);
			RequestDispatcher rd = req.getRequestDispatcher("mypage.jsp");
			rd.forward(req, res);
			
		}else {
			res.sendRedirect("loggingMain.jsp");
		}
		
	}

}

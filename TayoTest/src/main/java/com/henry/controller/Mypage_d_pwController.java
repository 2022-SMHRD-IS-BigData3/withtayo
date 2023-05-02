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
import com.henry.testEntity.UniversalDAO;


@WebServlet("/Mypage_d_pw")
public class Mypage_d_pwController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		HttpSession sesh = req.getSession();
		
		Driver loggedIn = (Driver)sesh.getAttribute("driver");
	
		String d_id = loggedIn.getD_id();
		String d_pw = req.getParameter("d_pw");
		String nd_pw = req.getParameter("nd_pw");
		String nd_pw1 = req.getParameter("nd_pw1");
		
		Driver vo =new Driver(d_id,nd_pw,nd_pw1);
		vo.setD_id(d_id);
		vo.setD_pw(d_pw);
		vo.setNd_pw(nd_pw);
		vo.setNd_pw1(nd_pw1);
		
		UniversalDAO dao =new UniversalDAO();
		
		int row = dao.nd_pw(vo);
		if(row>0) {
			req.setAttribute("nd_pw", vo);
			RequestDispatcher rd = req.getRequestDispatcher("driverMypage.jsp");
			rd.forward(req, res);
			
		}else {
			res.sendRedirect("loggingMain.jsp");
		}
		
	}

}
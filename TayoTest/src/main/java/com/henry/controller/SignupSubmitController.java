package com.henry.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.henry.testEntity.Passenger;
import com.henry.testEntity.UniversalDAO;

@WebServlet("/SignupSubmit")
public class SignupSubmitController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String p_id = req.getParameter("p_id");
		String p_pw = req.getParameter("p_pw");
		String p_ph = req.getParameter("p_ph");
		Passenger vo = new Passenger(p_id,p_pw,p_ph);
		UniversalDAO dao =new UniversalDAO();
		int row=dao.pjoin(vo);
		if(row>0) {
			req.setAttribute("pjoin", vo);
			RequestDispatcher rd=req.getRequestDispatcher("testSearch.jsp");
			rd.forward(req, res);
		}else {
			res.sendRedirect("universalSignup.jsp");
		}
		
	}

		
	
	}

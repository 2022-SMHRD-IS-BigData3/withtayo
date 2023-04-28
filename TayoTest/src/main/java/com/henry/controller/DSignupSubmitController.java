package com.henry.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.henry.testEntity.Driver;
import com.henry.testEntity.Passenger;
import com.henry.testEntity.UniversalDAO;


@WebServlet("/DSignupSubmit")
public class DSignupSubmitController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String d_id = req.getParameter("d_id");
		String d_pw = req.getParameter("d_pw");
		Driver vo = new Driver(d_id,d_pw);
		UniversalDAO dao =new UniversalDAO();
		int row=dao.djoin(vo);
		if(row>0) {
			req.setAttribute("djoin", vo);
			RequestDispatcher rd=req.getRequestDispatcher("loggingMain.jsp");
			rd.forward(req, res);
			
		}else {
			res.sendRedirect("universalSignup.jsp");
		}
		
	
	}

	}

package com.henry.infoHandlers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.henry.testEntity.Passenger;
import com.henry.testEntity.UniversalDAO;

@WebServlet("/FindPwById")
public class FindPwByIdController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		
		String p_id = request.getParameter("id");
		String p_ph = request.getParameter("phone");
	
		Passenger psg = new Passenger();
		psg.setP_id(p_id);
		psg.setP_ph(p_ph);
		
		UniversalDAO dao = new UniversalDAO();
		Passenger resultVO = dao.findPSGPw(psg);
		
		request.setAttribute("yourInfo", resultVO);
		RequestDispatcher rd = request.getRequestDispatcher("findByPhone.jsp");
		rd.forward(request, response);
		
	}

}

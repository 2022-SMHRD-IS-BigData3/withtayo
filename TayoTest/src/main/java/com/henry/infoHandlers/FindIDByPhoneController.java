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

@WebServlet("/FindIDByPhone")
public class FindIDByPhoneController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String p_ph = request.getParameter("phone");
		
		UniversalDAO dao = new UniversalDAO();
		
		Passenger psg = dao.getIdByPH(p_ph);
		
		response.setCharacterEncoding("UTF-8");
		request.setAttribute("yourId", psg);
		
		RequestDispatcher rd = request.getRequestDispatcher("findBy.jsp");
		rd.forward(request, response);
		
	
	}

}

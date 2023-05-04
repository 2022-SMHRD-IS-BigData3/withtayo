package com.henry.bookingController;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.henry.testEntity.Book_Info;
import com.henry.testEntity.Shift;
import com.henry.testEntity.UniversalDAO;

@WebServlet("/PsgArrival")
public class PsgArrivalCheckController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		
		String b_id = request.getParameter("b_id");
	
		Book_Info booker = new Book_Info();
		booker.setB_id(b_id);
		
		UniversalDAO dao = new UniversalDAO();
		Shift bus = dao.checkPsgArrivalStat(booker);
		
		response.setContentType("application/json;charset=utf-8");
		
		Gson gson = new Gson();
		
		String busJson = gson.toJson(bus);
		
		PrintWriter out = response.getWriter();
		
		out.write(busJson);
		
		out.flush();
	}

}

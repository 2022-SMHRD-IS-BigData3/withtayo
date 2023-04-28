package com.henry.bookingController;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.henry.testEntity.Book_Info;
import com.henry.testEntity.UniversalDAO;

@WebServlet("/Book")
public class BookingController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		
		String b_id = request.getParameter("b_id"); // vehicleno;
		String blog_id = request.getParameter("blog_id");
	
		UniversalDAO dao = new UniversalDAO();
		Book_Info processed = dao.packageBooking(b_id, blog_id);
		
		Gson gson = new Gson();
		
		String json = gson.toJson(processed);
		
		response.setContentType("application/json;charset=utf-8");
		
		HttpSession sesh = request.getSession();
		
		sesh.setAttribute("bookedInfo", json);
		PrintWriter out = response.getWriter();
		
		out.write(json);
		
		System.out.println("JSON PACKAGED AND SET TO bookedInfo sesh attrib");
		
	}

}

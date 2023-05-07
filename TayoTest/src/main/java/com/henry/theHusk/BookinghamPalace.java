package com.henry.theHusk;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.henry.testEntity.Book_Info;
import com.henry.testEntity.UniversalDAO;

public class BookinghamPalace implements TheHugeTool{

	@Override
	public String exteeerminaaaate(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		String b_id = request.getParameter("b_id"); // vehicleno;
		String blog_id = request.getParameter("blog_id");
	
		UniversalDAO dao = new UniversalDAO();
		Book_Info processed = dao.packageBooking(b_id, blog_id);
		
		Gson gson = new Gson();
		
		String json = gson.toJson(processed);
		
		response.setContentType("application/json;charset=utf-8");
		
		HttpSession sesh = request.getSession();
		
		sesh.setAttribute("bookedInfo", processed);
		PrintWriter out = response.getWriter();
		
		out.write(json);
		
		out.flush();
		
		System.out.println("JSON PACKAGED AND SET TO bookedInfo sesh attrib");
		
		return null;
	}

}

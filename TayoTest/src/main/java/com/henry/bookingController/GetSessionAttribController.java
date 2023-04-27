package com.henry.bookingController;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.henry.testEntity.Book_Info;

@WebServlet("/GetSessionAttrib")
public class GetSessionAttribController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession sesh = request.getSession();
		
		Book_Info bookStatus = (Book_Info)sesh.getAttribute("bookedInfo");
		
		response.setContentType("application/json;charset=utf-8");
		
		Gson gson = new Gson();
		
		String json = gson.toJson(bookStatus);
		
		PrintWriter out = response.getWriter();
		
		out.write(json);
	}

}

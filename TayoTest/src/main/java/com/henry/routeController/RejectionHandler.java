package com.henry.routeController;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.henry.testEntity.Book_Info;
import com.henry.testEntity.UniversalDAO;


@WebServlet("/Reject")
public class RejectionHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		
		Gson gson = new Gson();
		
		String fromJ = request.getParameter("theBooker");
		
		Book_Info bookInfo = gson.fromJson(fromJ, Book_Info.class);
		
		UniversalDAO dao = new UniversalDAO();
		int result = dao.rejectionUpdate(bookInfo);
		
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		out.write(result);
		
		out.flush();
		
	}

}

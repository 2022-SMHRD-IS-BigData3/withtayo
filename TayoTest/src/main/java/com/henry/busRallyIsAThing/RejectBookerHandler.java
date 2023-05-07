package com.henry.busRallyIsAThing;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.henry.testEntity.Book_Info;
import com.henry.testEntity.UniversalDAO;
import com.henry.theHusk.TheHugeTool;

public class RejectBookerHandler implements TheHugeTool{

	@Override
	public String exteeerminaaaate(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		Gson gson = new Gson();
		
		String fromJ = request.getParameter("theBooker");
		
		Book_Info bookInfo = gson.fromJson(fromJ, Book_Info.class);
		
		UniversalDAO dao = new UniversalDAO();
		int result = dao.rejectionUpdate(bookInfo);
		
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		out.write(result);
		
		out.flush();
		
		return null;
	}

}

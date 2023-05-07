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

public class GetPassengerHandler implements TheHugeTool{

	@Override
	public String exteeerminaaaate(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		String b_id = request.getParameter("b_id");

		UniversalDAO dao = new UniversalDAO();
		// 승낙 상태가 false인 사람만 조회
		Book_Info bookinfo = dao.getPreAccepted(b_id);
		
		Gson gson = new Gson();
		
		String json = gson.toJson(bookinfo);
		
		response.setContentType("application/json;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		out.write(json);
		
		out.flush();
		
		return null;
	}
	
}

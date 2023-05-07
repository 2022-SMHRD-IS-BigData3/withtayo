package com.henry.theHusk;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.henry.testEntity.Book_Info;
import com.henry.testEntity.Shift;
import com.henry.testEntity.UniversalDAO;

public class GetMyDawdlingBus implements TheHugeTool{

	@Override
	public String exteeerminaaaate(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
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
		
		return null;
	}

}

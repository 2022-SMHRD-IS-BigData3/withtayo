package com.henry.busRallyIsAThing;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.henry.testEntity.R_Info;
import com.henry.testEntity.UniversalDAO;
import com.henry.theHusk.TheHugeTool;

public class DriverRouteSelect implements TheHugeTool{

	@Override
	public String exteeerminaaaate(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		String routeno = request.getParameter("routeno");
		
		UniversalDAO dao = new UniversalDAO();
		
		R_Info resultRoute = dao.getRouteByName(routeno);
		
		Gson gson = new Gson();
		
		String json = gson.toJson(resultRoute);
		
		response.setContentType("application/json;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		out.write(json);
		
		out.flush();
		
		return null;
	}

}

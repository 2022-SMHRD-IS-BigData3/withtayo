package com.henry.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.henry.testEntity.R_Info;
import com.henry.testEntity.UniversalDAO;

@WebServlet("/DriverRouteSelect")
public class DriverRouteSelectController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String routeno = request.getParameter("routeno");
		
		UniversalDAO dao = new UniversalDAO();
		
		R_Info resultRoute = dao.getRouteByName(routeno);
		
		Gson gson = new Gson();
		
		String json = gson.toJson(resultRoute);
		
		response.setContentType("application/json;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		out.write(json);
	
	}

}

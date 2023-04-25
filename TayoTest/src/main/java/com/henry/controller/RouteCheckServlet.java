package com.henry.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.henry.testEntity.R_Info;
import com.henry.testEntity.UniversalDAO;

@WebServlet("/RouteCheck")
public class RouteCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		
		String routeID = request.getParameter("routeResult");
		
		UniversalDAO dao = new UniversalDAO();
		

		R_Info resultVO = dao.getRoute(routeID);
		
		Gson gson = new Gson();
		
		String json = gson.toJson(resultVO);
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		out.write(json);
		
		out.flush();
		
	
	}

}

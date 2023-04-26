package com.henry.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.henry.testEntity.R_Info;
import com.henry.testEntity.UniversalDAO;

@WebServlet("/RouteCheck")
public class RouteCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		
		String jsonString = request.getReader().lines().collect(Collectors.joining());
		
		System.out.println(jsonString);
		
		Gson gson = new Gson();
		
		List<String> parsedList = gson.fromJson(jsonString, new TypeToken<List<String>>() {}.getType());
		
		UniversalDAO dao = new UniversalDAO();
		
		List<R_Info> resultList = new ArrayList<R_Info>();
		
		for(int i = 0 ; i < parsedList.size() ; i++) {
			resultList.add(dao.getRoute(parsedList.get(i)));
		}
		
		String jsonResult = gson.toJson(resultList);
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		out.write(jsonResult);
		
		out.flush();
		
	
	}

}

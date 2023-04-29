package com.henry.routeController;

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
import com.henry.testEntity.Book_Info;
import com.henry.testEntity.UniversalDAO;

@WebServlet("/CancelCheck")
public class CancelCheckController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		
		Gson gson = new Gson();
		
		String fetchedJson = request.getParameter("subjects");
		
		//deserialize!
		Book_Info[] bInfoArr = gson.fromJson(fetchedJson, Book_Info[].class);
		
		UniversalDAO dao = new UniversalDAO();
		
		List<Book_Info> resultList = new ArrayList<>();
		
		for(int i = 0 ; i < bInfoArr.length ; i++) {
			String bookingId = bInfoArr[i].getBlog_id();
			Book_Info toCheck = dao.cancelCheck(bookingId);
			if(toCheck.isCanceled()) {
				resultList.add(toCheck);
			}
		}
		
		String packageToSend = gson.toJson(resultList);
		
		response.setContentType("application/json;charset=utf-8");
				
		PrintWriter out = response.getWriter();
		
		out.write(packageToSend);
	}

}

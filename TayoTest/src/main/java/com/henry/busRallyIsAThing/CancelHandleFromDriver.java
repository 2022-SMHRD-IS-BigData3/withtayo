package com.henry.busRallyIsAThing;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.henry.testEntity.Book_Info;
import com.henry.testEntity.UniversalDAO;
import com.henry.theHusk.TheHugeTool;

public class CancelHandleFromDriver implements TheHugeTool{

	@Override
	public String exteeerminaaaate(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
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
		
		return null;
	}

}

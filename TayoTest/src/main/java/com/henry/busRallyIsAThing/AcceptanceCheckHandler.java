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

public class AcceptanceCheckHandler implements TheHugeTool{

	@Override
	public String exteeerminaaaate(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		Gson gson = new Gson();
		
		String fetchedJson = request.getParameter("bookInfo");
		
		int accepted = Integer.parseInt(request.getParameter("accepted")); 
			
		Book_Info bookInfo = gson.fromJson(fetchedJson, Book_Info.class); 
		
		if(accepted == 0) {
			bookInfo.setAccepted(false);
		}else if(accepted == 1){
			bookInfo.setAccepted(true);
		}
	
		UniversalDAO dao = new UniversalDAO();
		int result = dao.updateAcceptance(bookInfo);

		PrintWriter out = response.getWriter();
		
		out.print(result);
		
		out.flush();
		
		return null;
	}

}

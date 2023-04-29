package com.henry.routeController;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.henry.testEntity.Book_Info;
import com.henry.testEntity.UniversalDAO;

@WebServlet("/AcceptCheck")
public class AcceptanceCheckController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		
		Gson gson = new Gson();
		
		String fetchedJson = req.getParameter("bookInfo");
		
		int accepted = Integer.parseInt(req.getParameter("accepted")); 
			
		Book_Info bookInfo = gson.fromJson(fetchedJson, Book_Info.class); 
		
		if(accepted == 0) {
			bookInfo.setAccepted(false);
		}else if(accepted == 1){
			bookInfo.setAccepted(true);
		}
	
		UniversalDAO dao = new UniversalDAO();
		int result = dao.updateAcceptance(bookInfo);

		PrintWriter out = resp.getWriter();
		
		out.print(result);
	}

}

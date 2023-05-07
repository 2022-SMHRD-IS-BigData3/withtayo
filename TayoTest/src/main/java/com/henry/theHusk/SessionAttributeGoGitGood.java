package com.henry.theHusk;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.henry.testEntity.Book_Info;

public class SessionAttributeGoGitGood implements TheHugeTool{

	@Override
	public String exteeerminaaaate(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		HttpSession sesh = request.getSession();
		
		Book_Info bookStatus = (Book_Info)sesh.getAttribute("bookedInfo");
		
		response.setContentType("application/json;charset=utf-8");
		
		Gson gson = new Gson();
		
		String json = gson.toJson(bookStatus);
		
		PrintWriter out = response.getWriter();
		
		out.write(json);
		
		out.flush();
		
		return null;
	}

}

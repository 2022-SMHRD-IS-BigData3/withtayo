package com.henry.theHusk;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.henry.testEntity.B_Stop;
import com.henry.testEntity.UniversalDAO;

public class KeywordInputHandler implements TheHugeTool{

	@Override
	public String exteeerminaaaate(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		String keyword = request.getParameter("keyword");
		
		B_Stop tempVO = new B_Stop();
		tempVO.setNodenm(keyword);
		
		UniversalDAO dao = new UniversalDAO();
		
		List<B_Stop> result = dao.search(tempVO);

		// using Gson
		Gson gson = new Gson();
		
		String json = gson.toJson(result);
		
		response.setContentType("application/json;charset=utf-8");

		PrintWriter out = response.getWriter();
		
		out.print(json);
		
		out.flush();
		
		return null;
	}

}

package com.henry.theHusk;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.henry.testEntity.Favorite;
import com.henry.testEntity.Passenger;
import com.henry.testEntity.UniversalDAO;

public class BookmarkFetchingBoyo implements TheHugeTool{

	@Override
	public String exteeerminaaaate(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		HttpSession sesh = request.getSession();
		
		Passenger psngr = (Passenger)sesh.getAttribute("whoLoggedIn");
	
		String p_id = psngr.getP_id();
		System.out.println(p_id);
		UniversalDAO dao = new UniversalDAO();
		
		List<Favorite> resultList = dao.getFavs(p_id);
		
		response.setContentType("application/json;charset=utf-8");
		
		Gson gson = new Gson();
		
		String json = gson.toJson(resultList);
		
		PrintWriter out = response.getWriter();
		
		out.write(json);
		
		out.flush();
		
		return null;
	}

}

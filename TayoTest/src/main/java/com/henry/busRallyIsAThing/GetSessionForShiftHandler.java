package com.henry.busRallyIsAThing;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.henry.testEntity.Shift;
import com.henry.theHusk.TheHugeTool;

public class GetSessionForShiftHandler implements TheHugeTool{

	@Override
	public String exteeerminaaaate(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		HttpSession sesh = request.getSession();
		
		Shift currentShift = (Shift)sesh.getAttribute("thisShift");
		
		Gson gson = new Gson();
		
		String json = gson.toJson(currentShift);
		
		response.setContentType("application/json;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		out.write(json);
		
		out.flush();
		
		return null;
	}

}

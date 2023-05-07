package com.henry.busRallyIsAThing;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.henry.testEntity.Shift;
import com.henry.testEntity.UniversalDAO;
import com.henry.theHusk.TheHugeTool;

public class GetMyBussss implements TheHugeTool{

	@Override
	public String exteeerminaaaate(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		String json = request.getParameter("thisShift");
		String currNodeId = request.getParameter("busCurrNodeId");
		String currNodeNm = request.getParameter("busCurrNodeNm");
		int currNodeOrd = Integer.parseInt(request.getParameter("busCurrNodeOrd"));
		
		Gson gson = new Gson();
		
		Shift thisBus = gson.fromJson(json, Shift.class);
		thisBus.setNodeid(currNodeId);
		thisBus.setNodenm(currNodeNm);
		thisBus.setNodeord(currNodeOrd);
		
		System.out.println(thisBus.getB_id() + "는 " + thisBus.getNodeid() + " 에 있다." + thisBus.getNodeord() + ": 정류솧순번.");
		
		UniversalDAO dao = new UniversalDAO();
		
		int result = dao.updateBusLoc(thisBus);
			
		System.out.println("#" + result + " coordinate updated");
		
		response.setContentType("application/json;charset=utf-8");
		
		String jsonToSend = gson.toJson(thisBus, Shift.class);
		
		PrintWriter out = response.getWriter();
		
		out.write(jsonToSend);
		
		out.flush();
		
		return null;
	}

}

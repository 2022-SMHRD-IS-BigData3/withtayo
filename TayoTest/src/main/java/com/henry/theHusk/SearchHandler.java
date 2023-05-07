package com.henry.theHusk;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.henry.testEntity.B_Stop;
import com.henry.testEntity.UniversalDAO;

public class SearchHandler implements TheHugeTool{

	@Override
	public String exteeerminaaaate(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		String dprtName = request.getParameter("dprtnm");
		String arrvName = request.getParameter("arrvnm");
		
		B_Stop dprtVO = new B_Stop();
		dprtVO.setNodenm(dprtName);
		B_Stop arrvVO = new B_Stop();
		arrvVO.setNodenm(arrvName);
		
		// 쿼리
		UniversalDAO dao = new UniversalDAO();
		List<B_Stop> resultDprtList = dao.search2(dprtVO);
		List<B_Stop> resultArrvList = dao.search2(arrvVO);
		
		List<String> finalList = new ArrayList<String>();
		for(int i = 0 ; i < resultDprtList.size(); i++) {
			finalList.add(resultDprtList.get(i).getNodeid());
		}
		for(int i = 0 ; i < resultArrvList.size(); i++){
			finalList.add(resultArrvList.get(i).getNodeid());
		}
		
	//	response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		out.print(finalList);
		
		out.flush();
		
		return null;
		
	}
	
}

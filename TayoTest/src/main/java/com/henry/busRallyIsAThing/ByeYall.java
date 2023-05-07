package com.henry.busRallyIsAThing;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.henry.testEntity.Book_Info;
import com.henry.testEntity.UniversalDAO;
import com.henry.theHusk.TheHugeTool;

public class ByeYall implements TheHugeTool{

	@Override
	public String exteeerminaaaate(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		String blog_id = request.getParameter("ousted");
		
		UniversalDAO dao = new UniversalDAO();
		
		// 먼저 지울 예약정보 가져오고
		Book_Info midProcess = dao.getBookingByBID(blog_id);
		
		// DELEEEEEEEEETE and hope somebody gets the reference lolz
		int delArchResult = dao.delThenArchive(midProcess);
		
		//승객수도 처리
		int psgSubResult = dao.updatePsgNum(midProcess.getB_id());
		
		response.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		
		out.write(psgSubResult+delArchResult);
		
		out.flush();
		
		return null;
	}

}

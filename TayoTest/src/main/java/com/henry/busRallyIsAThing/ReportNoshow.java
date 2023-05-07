package com.henry.busRallyIsAThing;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.henry.testEntity.UniversalDAO;
import com.henry.theHusk.TheHugeTool;

public class ReportNoshow implements TheHugeTool{

	@Override
	public String exteeerminaaaate(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		String p_id = request.getParameter("targetPsg");
		String blog_id = request.getParameter("targetBooking");
	
		UniversalDAO dao = new UniversalDAO();
		// 승객 경고 + 예약정보 삭제
		int warnResult = dao.addWarning(p_id);
		int delResult = dao.delBookById(blog_id);
		
		response.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		
		out.write(warnResult+delResult);
		
		out.flush();
		
		return null;
	}

}

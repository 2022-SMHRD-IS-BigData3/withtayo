package com.henry.routeController;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.henry.testEntity.UniversalDAO;

@WebServlet("/NoShow")
public class NoShowHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
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
	}

}

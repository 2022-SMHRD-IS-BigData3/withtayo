package com.henry.bookingController;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.henry.testEntity.UniversalDAO;

@WebServlet(asyncSupported = true, urlPatterns = { "/RejectTerminal" })
public class RejectionTerminalHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		
		String blog_id = request.getParameter("blog_id");
		
		UniversalDAO dao = new UniversalDAO();
		
		int result = dao.delAndArchiveBooking(blog_id);
		
		PrintWriter out = response.getWriter();
		
		out.write("{result:"+result+"}");
		
		out.flush();
		
		
		
		//sesh.delete("delBookInfo", bookInfo.getBlog_id());
		//sesh.commit();
		//result = sesh.insert("archiveBookingLog", intermed);
		//sesh.commit();
		
	}

}

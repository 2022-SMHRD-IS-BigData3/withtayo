package com.henry.theHusk;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.henry.testEntity.UniversalDAO;

public class RejectionTerminalHandler implements TheHugeTool{

	@Override
	public String exteeerminaaaate(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
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
		
		return null;
	}

}

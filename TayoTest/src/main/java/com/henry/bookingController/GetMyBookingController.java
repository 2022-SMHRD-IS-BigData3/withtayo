package com.henry.bookingController;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.henry.testEntity.Book_Info;
import com.henry.testEntity.UniversalDAO;

@WebServlet("/GetMyBooking")
public class GetMyBookingController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession sesh = request.getSession();

		Book_Info myBooking = (Book_Info)sesh.getAttribute("bookedInfo");

		UniversalDAO dao = new UniversalDAO();
		
		Book_Info bookResult = dao.getBookingByBlogID(myBooking.getBlog_id());
		
		Gson gson = new Gson();

		String json = gson.toJson(bookResult, Book_Info.class);

		response.setContentType("application/json;charset=utf-8");
		
		PrintWriter out = response.getWriter();

		out.write(json);
		out.flush();
	}

}

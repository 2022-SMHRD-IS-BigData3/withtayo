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
import com.henry.testEntity.Shift;
import com.henry.testEntity.UniversalDAO;

// 안씀 -- 예비용
@WebServlet("/GetTargetBus")
public class GetTargetBusController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession sesh = request.getSession();
		
		Book_Info myBooking = (Book_Info) sesh.getAttribute("bookedInfo");
		
		UniversalDAO dao = new UniversalDAO();
		
		Shift targetShift = dao.getTargetBus(myBooking.getB_id());
		
		Gson gson = new Gson();
		
		String json = gson.toJson(targetShift);
		
		// shift  json으로 보낵ㄹ것
		response.setContentType("application/json;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		out.write(json);
		
		out.flush();
	
	}

}

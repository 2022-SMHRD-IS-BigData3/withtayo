package com.henry.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.henry.testEntity.Bus;
import com.henry.testEntity.Driver;
import com.henry.testEntity.Shift;
import com.henry.testEntity.UniversalDAO;

@WebServlet("/BusRegister")
public class BusRegistryController extends HttpServlet {

	// 운행정보 패키징 후 세션에 뙇
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		
		HttpSession sesh = req.getSession();
		
		Driver driver = (Driver)sesh.getAttribute("driver");
		String d_id = driver.getD_id();
		String b_id = req.getParameter("tailNum");
		String routeno = req.getParameter("routeno");
		String routeid = req.getParameter("routeid");
		
		System.out.println(d_id+b_id+routeno+routeid);
		// 운행정보 패키징
		Shift thisShift = new Shift();
		thisShift.setD_id(d_id);
		thisShift.setB_id(b_id);
		thisShift.setRouteno(routeno);
		thisShift.setRouteid(routeid);
		
		UniversalDAO dao = new UniversalDAO();
		int result = dao.addShift(thisShift);
		
		resp.setContentType("application/json;charset=utf-8");
		
		sesh.setAttribute("thisShift", thisShift);
			
		resp.sendRedirect("driverBusRegistryResult.jsp");
		
	}
	
}

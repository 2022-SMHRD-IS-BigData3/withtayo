package com.henry.busRallyIsAThing;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.henry.testEntity.Driver;
import com.henry.testEntity.Shift;
import com.henry.testEntity.UniversalDAO;
import com.henry.theHusk.TheHugeTool;

public class BusRegistryHandler implements TheHugeTool{

	@Override
	public String exteeerminaaaate(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		HttpSession sesh = request.getSession();
		
		Driver driver = (Driver)sesh.getAttribute("driver");
		String d_id = driver.getD_id();
		String b_id = request.getParameter("tailNum");
		String routeno = request.getParameter("routeno");
		String routeid = request.getParameter("routeid");
		
		System.out.println(d_id+b_id+routeno+routeid);
		// 운행정보 패키징
		Shift thisShift = new Shift();
		thisShift.setD_id(d_id);
		thisShift.setB_id(b_id);
		thisShift.setRouteno(routeno);
		thisShift.setRouteid(routeid);
		
		UniversalDAO dao = new UniversalDAO();
		dao.addShift(thisShift);
		
		response.setContentType("application/json;charset=utf-8");
		
		sesh.setAttribute("thisShift", thisShift);
		
		return "driverBusRegistryResult.jsp";
	}

}

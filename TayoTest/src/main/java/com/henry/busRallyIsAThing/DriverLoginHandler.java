package com.henry.busRallyIsAThing;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.henry.testEntity.Driver;
import com.henry.testEntity.UniversalDAO;
import com.henry.theHusk.TheHugeTool;

public class DriverLoginHandler implements TheHugeTool{

	@Override
	public String exteeerminaaaate(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		String d_id = request.getParameter("d_id");
		String d_pw = request.getParameter("d_pw");

		Driver vo = new Driver();

		vo.setD_id(d_id);
		vo.setD_pw(d_pw);

		UniversalDAO dao = new UniversalDAO();

		Driver resultVO = dao.login(vo);

		if (resultVO != null) {
			HttpSession sesh = request.getSession();

			sesh.setAttribute("driver", resultVO);
			
			return "driverLogging.jsp";
			
		}else {
			return "redir:P/Effing-driverLogging.boom";
		}
		
	}

}

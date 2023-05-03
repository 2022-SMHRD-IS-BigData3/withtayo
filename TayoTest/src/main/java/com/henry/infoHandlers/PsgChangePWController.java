package com.henry.infoHandlers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.henry.testEntity.Passenger;
import com.henry.testEntity.UniversalDAO;

@WebServlet("/PsgChangePW")
public class PsgChangePWController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		
		Passenger whoLoggedIn = (Passenger) request.getAttribute("whoLoggedIn");
		
		String p_pw = request.getParameter("p_pw");
		String new_pw = request.getParameter("new_pw");
		String new_pw_confirm = request.getParameter("new_pw_confirm");
		
		whoLoggedIn.setP_pw(p_pw);
		whoLoggedIn.setNew_pw(new_pw);
		
		response.setCharacterEncoding("UTF-8");
		
		UniversalDAO dao = new UniversalDAO();
		
		if(new_pw.equals(new_pw_confirm)) {
			try {
				dao.np_pw(whoLoggedIn);
				response.sendRedirect("mypage.jsp");
			}catch(Exception e) {
				request.setAttribute("invalidPw", "비밀번호를 확인하세요.");
				RequestDispatcher rd = request.getRequestDispatcher("mypage.jsp");
				rd.forward(request, response);
			}
			
		}else {
			request.setAttribute("failedStat", "입력한 비밀번호가 일치하지 않습니다.");
			RequestDispatcher rd = request.getRequestDispatcher("mypage.jsp");
			rd.forward(request, response);
		}
		
	}

}

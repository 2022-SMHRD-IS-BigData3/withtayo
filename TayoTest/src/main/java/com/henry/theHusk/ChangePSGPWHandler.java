package com.henry.theHusk;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.henry.testEntity.Passenger;
import com.henry.testEntity.UniversalDAO;

public class ChangePSGPWHandler implements TheHugeTool{

	@Override
	public String exteeerminaaaate(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
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
				return "redir:P/Effing-mypage.quack";
				
			}catch(Exception e) {
				request.setAttribute("invalidPw", "비밀번호를 확인하세요.");
				return "mypage.jsp";
			}
			
		}else {
			request.setAttribute("failedStat", "입력한 비밀번호가 일치하지 않습니다.");
			return "mypage.jsp";
		}
		
	}

}

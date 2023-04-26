package com.henry.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.henry.testEntity.Favorite;
import com.henry.testEntity.Passenger;
import com.henry.testEntity.UniversalDAO;

@WebServlet("/AddFav")
public class AddFavController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		
		String favRouteId = request.getParameter("routeInfo");
		String favDprtNode = request.getParameter("dprtNode");
		String favArrvNode = request.getParameter("arrvNode");
		String favRouteName = request.getParameter("routeName");
		
		System.out.println(favRouteId);
		System.out.println(favDprtNode);
		System.out.println(favArrvNode);
		
		// 즐겨찾기에 이미 있는 정보는 인서트 안되게
		// 너무 많아지면 뒷부분 삭제
		
		HttpSession sesh = request.getSession();
		Passenger loggedIn = (Passenger)sesh.getAttribute("whoLoggedIn");
		
		Favorite favVO = new Favorite();
		favVO.setP_id(loggedIn.getP_id());
		favVO.setRouteid(favRouteId);
		favVO.setF_dprt(favDprtNode);
		favVO.setF_arrv(favArrvNode);
		favVO.setRouteno(favRouteName);
		
		UniversalDAO dao = new UniversalDAO();
		int result = dao.addFav(favVO);
		// 0이면 버튼에 '이미 잇습니다' 표시 // 1이면 없어짐
		
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		
		out.print(result);
		
		out.flush();
	}

}

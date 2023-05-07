package com.henry.frontcontroller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.henry.busRallyIsAThing.AcceptanceCheckHandler;
import com.henry.busRallyIsAThing.BusRegistryHandler;
import com.henry.busRallyIsAThing.ByeYall;
import com.henry.busRallyIsAThing.CancelHandleFromDriver;
import com.henry.busRallyIsAThing.DriverChangePassword;
import com.henry.busRallyIsAThing.DriverLoginHandler;
import com.henry.busRallyIsAThing.DriverLogoutHandler;
import com.henry.busRallyIsAThing.DriverRouteSelect;
import com.henry.busRallyIsAThing.GetMyBussss;
import com.henry.busRallyIsAThing.GetPassengerHandler;
import com.henry.busRallyIsAThing.GetSessionForShiftHandler;
import com.henry.busRallyIsAThing.OffTheShiftHandler;
import com.henry.busRallyIsAThing.RejectBookerHandler;
import com.henry.busRallyIsAThing.ReportNoshow;
import com.henry.busRallyIsAThing.RevokeDriverMembership;
import com.henry.theHusk.TheHugeTool;

@WebServlet(asyncSupported = true, urlPatterns = { "*.boom" })
public class BattleFront extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	HashMap<String, TheHugeTool> iveGotNothin = new HashMap<>();

	@Override
	public void init() throws ServletException {

		iveGotNothin.put("DriverRouteSelect.boom", new DriverRouteSelect());
		iveGotNothin.put("ShiftOff.boom", new OffTheShiftHandler());
		iveGotNothin.put("DriverLogin.boom", new DriverLoginHandler());
		iveGotNothin.put("RegisterMyBus.boom", new BusRegistryHandler());
		iveGotNothin.put("GetSessionForShift.boom", new GetSessionForShiftHandler());
		iveGotNothin.put("GetPassenger.boom", new GetPassengerHandler());
		iveGotNothin.put("RejectBooker.boom", new RejectBookerHandler());
		iveGotNothin.put("AcceptCheck.boom", new AcceptanceCheckHandler());
		iveGotNothin.put("CancelCheck.boom", new CancelHandleFromDriver());
		iveGotNothin.put("OffWithYourBooty.boom", new ByeYall());
		iveGotNothin.put("DealWithNoShow.boom", new ReportNoshow());
		iveGotNothin.put("WhereAmI.boom", new GetMyBussss());
		iveGotNothin.put("RevokeDriver.boom", new RevokeDriverMembership());
		iveGotNothin.put("ChangeDriverPW.boom", new DriverChangePassword());
		iveGotNothin.put("DriverLogout.boom", new DriverLogoutHandler());
	}
	
	// DRIVER!!!
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String uri = request.getRequestURI();
		
		String ctxtPath = request.getContextPath();
		
		String daWay = uri.substring(ctxtPath.length()+1);
		
		TheHugeTool tooool = null;
		
		String theKeyToSuccess = null;
		
		// logics or nurthin or death?
		if(daWay.contains("Effing-")) {
			theKeyToSuccess = daWay.replace("Effing-", "").replace("boom", "jsp");
			
		}else {
			tooool = iveGotNothin.get(daWay);
			theKeyToSuccess = tooool.exteeerminaaaate(request, response);
		}
		
		System.out.println("Intermed:"+theKeyToSuccess);
		
		// ajax handle : no more null pointer exception!!!!
		if(theKeyToSuccess == null) {
			// do nothing
			System.out.println("Handling async comm.");
			
		// redir or forward                that's right i stuck my tongue out!!!!!!!!!!!! :P:P:P:P:P:P:P:P:P
		}else if(theKeyToSuccess.contains("redir:P/")) {
			response.sendRedirect(theKeyToSuccess.replaceAll("redir:P/", ""));
			
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/prettyViews/"+theKeyToSuccess);
			rd.forward(request, response);
		}
		
		
		System.out.println("Final:"+theKeyToSuccess);
	
	}

}

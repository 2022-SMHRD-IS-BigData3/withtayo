package com.henry.frontcontroller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.henry.theHusk.AddBookmarkHandler;
import com.henry.theHusk.BookinghamPalace;
import com.henry.theHusk.BookmarkFetchingBoyo;
import com.henry.theHusk.CancelHandler;
import com.henry.theHusk.ChangePSGPHHandler;
import com.henry.theHusk.ChangePSGPWHandler;
import com.henry.theHusk.DataPackerForYourConvenience;
import com.henry.theHusk.DirtyHistoryBeholder;
import com.henry.theHusk.FindIDByPhone;
import com.henry.theHusk.FindPWByID;
import com.henry.theHusk.GetMyDawdlingBus;
import com.henry.theHusk.KeywordInputHandler;
import com.henry.theHusk.LandingPage;
import com.henry.theHusk.PassengerLogin;
import com.henry.theHusk.PassengerSignUp;
import com.henry.theHusk.PassengerSignUpSubmit;
import com.henry.theHusk.RejectionTerminalHandler;
import com.henry.theHusk.RevokePSGMembership;
import com.henry.theHusk.RouteSearchHandler;
import com.henry.theHusk.SearchHandler;
import com.henry.theHusk.SearchHistoryHandler;
import com.henry.theHusk.SessionAttributeGoGitGood;
import com.henry.theHusk.TheHugeTool;
import com.henry.theHusk.UpdateBookingHandler;

@WebServlet(asyncSupported = true, urlPatterns = { "*.quack" })
public class HomeFront extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// i'm dying lolololololololololololol
	HashMap<String, TheHugeTool> meinKampf = new HashMap<String, TheHugeTool>();
	
	@Override
	public void init() throws ServletException {
		// loggingMain.jsp > FC > passengerLogin > FC > testSearch.jsp
		// fail : back to loggingMain
		meinKampf.put("landing.quack", new LandingPage());
		meinKampf.put("PassengerLogin.quack", new PassengerLogin());
		meinKampf.put("PassengerSignup.quack", new PassengerSignUp());
		meinKampf.put("PSGSignupSubmit.quack", new PassengerSignUpSubmit());
		meinKampf.put("KeywordInput.quack", new KeywordInputHandler());
		meinKampf.put("Search.quack", new SearchHandler());
		meinKampf.put("RouteSearch.quack", new RouteSearchHandler());
		meinKampf.put("AddBookmark.quack", new AddBookmarkHandler());
		meinKampf.put("AddSearchHistory.quack", new SearchHistoryHandler());
		meinKampf.put("FetchBookmarks.quack", new BookmarkFetchingBoyo());
		meinKampf.put("YourDirtyHistory.quack", new DirtyHistoryBeholder()); // NAUGHTY THING
		meinKampf.put("Packup.quack", new DataPackerForYourConvenience());
		meinKampf.put("GetSessionAttrib.quack", new SessionAttributeGoGitGood());
		meinKampf.put("Booooooook.quack", new BookinghamPalace());
		meinKampf.put("Cancel.quack", new CancelHandler());
		meinKampf.put("UpdateMyBooking.quack", new UpdateBookingHandler());
		meinKampf.put("Annihilated.quack", new RejectionTerminalHandler());
		meinKampf.put("WhereTheEffIsMyBus.quack", new GetMyDawdlingBus());
		meinKampf.put("ChangePSGPh.quack", new ChangePSGPHHandler());
		meinKampf.put("ChangePSGPW.quack", new ChangePSGPWHandler());
		meinKampf.put("RevokePSG.quack", new RevokePSGMembership());
		meinKampf.put("FindPwById.quack", new FindPWByID());
		meinKampf.put("FindIDByPhone.quack", new FindIDByPhone());
		// THAT WAS A LOOOOOOOOOOOOONG LIST...
	}

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
			theKeyToSuccess = daWay.replace("Effing-", "").replace("quack", "jsp");
			
		}else {
			tooool = meinKampf.get(daWay);
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

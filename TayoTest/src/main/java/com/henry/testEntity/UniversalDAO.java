package com.henry.testEntity;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class UniversalDAO {

	private static SqlSessionFactory seshFac;

	static {
		try {

			String resource = "com/henry/testDbManager/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			seshFac = new SqlSessionFactoryBuilder().build(inputStream);
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("GET CONN FAILED!!!!!!!!!!!!!!!!!!!!!!");
		}
	}
	
	// 기사 로그인용
	public Driver login(Driver vo) {
		SqlSession sesh = null;
		Driver result = null;
		try {
			sesh = seshFac.openSession();
			result = sesh.selectOne("dLogin", vo);
		}finally {
			sesh.close();
		}
		return result;
	}
	
	// 버스 등록번호 조회용
	public Bus busCheck(Bus vo) {
		
		SqlSession sesh = null;
		Bus result = null;
		
		try {
			sesh = seshFac.openSession();
			result = sesh.selectOne("busCheck", vo);
		}finally {
			sesh.close();
		}
		
		return result;
	}

	// 승객 로그인
	public Passenger pLogin(Passenger pVO) {
		
		SqlSession sesh = null;
		Passenger result = null;
		
		try {
			
			sesh = seshFac.openSession();
			result = sesh.selectOne("pLogin", pVO);
			
		}finally {
			sesh.close();
		}
		
		return result;
	}
	
	// 정류장 찾기
	public List<B_Stop> search(B_Stop stop) {
		
		SqlSession sesh = null;
		List<B_Stop> result = null;
		
		try {
			
			sesh = seshFac.openSession();
			result = sesh.selectList("getStops", stop);
			
		}finally {
			sesh.close();
		}
		
		return result;
	}
	
	// 정류장 찾기 2 (양방향 조회)
	public List<B_Stop> search2(B_Stop node){
		
		List<B_Stop> resultList = null;
		SqlSession sesh = null;
		
		try {
			
			sesh = seshFac.openSession();
			resultList = sesh.selectList("getStops2", node);
			
		}finally {
			sesh.close();
		}
		
		return resultList;
	}
	
	// 노선 DB 조회
	public R_Info getRoute(String routeID) {
		
		SqlSession sesh = null;
		R_Info result = null;
		
		try {
			sesh = seshFac.openSession();
			result = sesh.selectOne("getRoute", routeID);
		}finally {
			sesh.close();
		}
		
		return result;
	}
	
	// 즐겨찾기 추가용 ! 넵
	public int addFav(Favorite fav) {
		
		SqlSession sesh = null;
		int addResult = 0;
		
		try {
			sesh=seshFac.openSession();
			
			// 조건문(이미 있으면 삽입 ㄴ)
			if(sesh.selectOne("checkDupeFav", fav)!=null) {
				addResult = 0;
			}else {
				addResult = sesh.insert("addFav", fav);
			}
			sesh.commit();
			
			// 너무 많아지면 뒤부터 데이터 삭제
			
		}finally {
			sesh.close();
		}
		
		return addResult;
	}
	
	// 즐겨찾기 갱신용
	public List<Favorite> getFavs(String p_id){
		
		SqlSession sesh = null;
		List<Favorite> resultList = null;
		
		try {
			sesh=seshFac.openSession();
			resultList = sesh.selectList("getFavs" ,p_id);
		}finally{
			sesh.close();
		}
		
		return resultList;
	}
	
	// 최근 검색 추가용
	public int addRecent(Recent rec) {
		
		SqlSession sesh = null;
		List<Recent> overflowCheck = null;
		int result = 0;
		try {
			
			sesh = seshFac.openSession();
			
			// 3개 넘어가는지 체크
			overflowCheck = sesh.selectList("recentOFCheck", rec);
			if(overflowCheck.size()>3) {
				sesh.delete("trimRecent", rec);
				result = sesh.insert("addRecent", rec);
			}else {
				result = sesh.insert("addRecent", rec);
			}
			sesh.commit();
			
		}finally {
			sesh.close();
		}
		return result;
	}
	
	public List<Recent> getRecent(String p_id){
		SqlSession sesh = null;
		List<Recent> resultList = null;
		
		try {
			sesh = seshFac.openSession();
			resultList = sesh.selectList("getRecent", p_id);
		}finally {
			sesh.close();
		}
		
		return resultList;
	}
	
	// 예약 프리뷰 페이지로 넘어갈때
	public Book_Info bookPrev(Book_Info binfo) {
		SqlSession sesh = null;
		Book_Info resultVO = null;
		
		try {
			// handle dupe or not?
			sesh = seshFac.openSession();
			sesh.insert("bookPreview", binfo);
			sesh.commit();
			
			resultVO = sesh.selectOne("getBookPrev", binfo);
			
		}finally {
			sesh.close();
		}
		
		return resultVO;
	}
	
	// 예약정보 > 대기화면 전송시 select,차량번호 업데이트 후 다시 셀렉트
	public Book_Info packageBooking(String b_id, String blog_id) {
		
		SqlSession sesh = null;
		Book_Info resultVO = null;
		Book_Info finalVO = null;
		try {
			sesh = seshFac.openSession();
			resultVO = sesh.selectOne("getBookingPSG", blog_id);
			resultVO.setB_id(b_id);
			sesh.update("packageBooking", resultVO);
			sesh.commit();
			finalVO = sesh.selectOne("getBookingPSG", blog_id);
		}finally {
			sesh.close();
		}
		
		return finalVO;
	}
	
	// 노선 크롤링용 !
	public int crawlAndInsert(R_Info route) {
		
		SqlSession sesh = null;
		int result = 0;
		
		try {
			
			sesh = seshFac.openSession();
			result = sesh.insert("crawlAndInsert", route);
			sesh.commit();
		}finally {
			sesh.close();
		}
		
		return result;
	}
	// 승객 회원가입 
	public int pjoin(Passenger vo) {
		SqlSession sesh=null;
		int row=0;
		try {
			sesh=seshFac.openSession();
			row =sesh.insert("pjoin",vo);
			sesh.commit();
		} catch (Exception e) {
			sesh.close();
		}
				
				
		return row;		
	}
	//버스 기사 회원가입
	public int djoin(Driver vo) {
		SqlSession sesh =null;
		int row=0;
		try {
			sesh=seshFac.openSession();
			row=sesh.insert("djoin",vo);
			sesh.commit();
		} catch (Exception e) {
			sesh.close();
		}
		return row;
	}

}

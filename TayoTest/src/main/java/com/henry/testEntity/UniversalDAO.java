package com.henry.testEntity;

import java.io.InputStream;
import java.util.List;
import java.util.concurrent.TimeUnit;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class UniversalDAO {

	private static SqlSessionFactory seshFac;
	private static final int MAX_RETRIES = 3;
	private static final long RETRY_DELAY_MS = 1000;

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

		int retries = 0;
		boolean success = false;

		while (!success && retries < MAX_RETRIES) {
			try {
				sesh = seshFac.openSession();
				result = sesh.selectOne("dLogin", vo);
				success = true;
			} catch (Exception e) {
				retries++;

				if (retries < MAX_RETRIES) {
					System.out.println("Transaction failed. Retrying in " + RETRY_DELAY_MS + " ms.");
					try {
						TimeUnit.MILLISECONDS.sleep(RETRY_DELAY_MS);
					} catch (InterruptedException ex) {
						// Handle interruption
					}
				} else {
					// If the maximum number of retries has been reached, throw an exception or
					// handle the failure
					throw new RuntimeException("Transaction failed after " + MAX_RETRIES + " retries.", e);
				}
			} finally {
				sesh.close();
			}
		}

		return result;
	}

	// 버스 등록번호 조회용 아마 안씀// check
	public Bus busCheck(Bus vo) {

		SqlSession sesh = null;
		Bus result = null;

		int retries = 0;
		boolean success = false;
		while (!success && retries < MAX_RETRIES) {

			try {
				sesh = seshFac.openSession();
				result = sesh.selectOne("busCheck", vo);
				success = true;
			} catch (Exception e) {
				retries++;

				if (retries < MAX_RETRIES) {
					System.out.println("Transaction failed. Retrying in " + RETRY_DELAY_MS + " ms.");
					try {
						TimeUnit.MILLISECONDS.sleep(RETRY_DELAY_MS);
					} catch (InterruptedException ex) {
					}
				} else {
					throw new RuntimeException("Transaction failed after " + MAX_RETRIES + " retries.", e);
				}

			} finally {
				sesh.close();
			}
		}

		return result;
	}

	// 승객 로그인
	public Passenger pLogin(Passenger pVO) {

		SqlSession sesh = null;
		Passenger result = null;

		int retries = 0;
		boolean success = false;

		while (!success && retries < MAX_RETRIES) {
			try {
				sesh = seshFac.openSession();
				result = sesh.selectOne("pLogin", pVO);
				success = true;
			} catch (Exception e) {
				retries++;

				if (retries < MAX_RETRIES) {
					System.out.println("Transaction failed. Retrying in " + RETRY_DELAY_MS + " ms.");
					try {
						TimeUnit.MILLISECONDS.sleep(RETRY_DELAY_MS);
					} catch (InterruptedException ex) {
					}
				} else {
					throw new RuntimeException("Transaction failed after " + MAX_RETRIES + " retries.", e);
				}
			} finally {
				sesh.close();
			}
		}
		return result;
	}

	// 정류장 찾기
	public List<B_Stop> search(B_Stop stop) {

		SqlSession sesh = null;
		List<B_Stop> result = null;

		int retries = 0;
		boolean success = false;

		while (!success && retries < MAX_RETRIES) {
			try {
				sesh = seshFac.openSession();
				result = sesh.selectList("getStops", stop);
				success = true;
			} catch (Exception e) {
				retries++;

				if (retries < MAX_RETRIES) {
					System.out.println("Transaction failed. Retrying in " + RETRY_DELAY_MS + " ms.");
					try {
						TimeUnit.MILLISECONDS.sleep(RETRY_DELAY_MS);
					} catch (InterruptedException ex) {
					}
				} else {
					throw new RuntimeException("Transaction failed after " + MAX_RETRIES + " retries.", e);
				}
			} finally {
				sesh.close();
			}
		}
		return result;
	}

	// 정류장 찾기 2 (양방향 조회)
	public List<B_Stop> search2(B_Stop node) {

		List<B_Stop> resultList = null;
		SqlSession sesh = null;

		int retries = 0;
		boolean success = false;
		while (!success && retries < MAX_RETRIES) {
			try {
				sesh = seshFac.openSession();
				resultList = sesh.selectList("getStops2", node);
				success = true;
			} catch (Exception e) {
				retries++;

				if (retries < MAX_RETRIES) {
					System.out.println("Transaction failed. Retrying in " + RETRY_DELAY_MS + " ms.");
					try {
						TimeUnit.MILLISECONDS.sleep(RETRY_DELAY_MS);
					} catch (InterruptedException ex) {
						// Handle interruption
					}
				} else {
					// If the maximum number of retries has been reached, throw an exception or
					// handle the failure
					throw new RuntimeException("Transaction failed after " + MAX_RETRIES + " retries.", e);
				}
			} finally {
				sesh.close();
			}
		}
		return resultList;
	}

	// 노선 DB 조회
	public R_Info getRoute(String routeID) {

		SqlSession sesh = null;
		R_Info result = null;

		int retries = 0;
		boolean success = false;
		while (!success && retries < MAX_RETRIES) {
			try {
				sesh = seshFac.openSession();
				result = sesh.selectOne("getRoute", routeID);
				success = true;
			} catch (Exception e) {
				retries++;

				if (retries < MAX_RETRIES) {
					System.out.println("Transaction failed. Retrying in " + RETRY_DELAY_MS + " ms.");
					try {
						TimeUnit.MILLISECONDS.sleep(RETRY_DELAY_MS);
					} catch (InterruptedException ex) {
					}
				} else {
					throw new RuntimeException("Transaction failed after " + MAX_RETRIES + " retries.", e);
				}
			} finally {
				sesh.close();
			}
		}
		return result;
	}

	// 즐겨찾기 추가용 ! 넵
	public int addFav(Favorite fav) {

		SqlSession sesh = null;
		int addResult = 0;

		int retries = 0;
		boolean success = false;

		while (!success && retries < MAX_RETRIES) {
			try {
				sesh = seshFac.openSession();

				// 조건문(이미 있으면 삽입 ㄴ)
				if (sesh.selectOne("checkDupeFav", fav) != null) {
					addResult = 0;
				} else {
					addResult = sesh.insert("addFav", fav);
				}
				sesh.commit();

				// 너무 많아지면 뒤부터 데이터 삭제
				success = true;
			} catch (Exception e) {
				retries++;

				if (retries < MAX_RETRIES) {
					System.out.println("Transaction failed. Retrying in " + RETRY_DELAY_MS + " ms.");
					try {
						TimeUnit.MILLISECONDS.sleep(RETRY_DELAY_MS);
					} catch (InterruptedException ex) {
						// Handle interruption
					}
				} else {
					// If the maximum number of retries has been reached, throw an exception or
					// handle the failure
					throw new RuntimeException("Transaction failed after " + MAX_RETRIES + " retries.", e);
				}
			} finally {
				sesh.close();
			}
		}
		return addResult;
	}

	// 즐겨찾기 갱신용
	public List<Favorite> getFavs(String p_id) {

		SqlSession sesh = null;
		List<Favorite> resultList = null;

		try {
			sesh = seshFac.openSession();
			resultList = sesh.selectList("getFavs", p_id);
		} finally {
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
			if (overflowCheck.size() > 3) {
				sesh.delete("trimRecent", rec);
				sesh.commit();
				result = sesh.insert("addRecent", rec);
			} else {
				result = sesh.insert("addRecent", rec);
			}
			sesh.commit();

		} finally {
			sesh.close();
		}
		return result;
	}

	public List<Recent> getRecent(String p_id) {
		SqlSession sesh = null;
		List<Recent> resultList = null;

		try {
			sesh = seshFac.openSession();
			resultList = sesh.selectList("getRecent", p_id);
		} finally {
			sesh.close();
		}

		return resultList;
	}

	// 예약 프리뷰 페이지로 넘어갈때
	public Book_Info bookPrev(Book_Info binfo) {
		SqlSession sesh = null;
		Book_Info resultVO = null;

		int retries = 0;
		boolean success = false;
		while (!success && retries < MAX_RETRIES) {
			try {
				// handle dupe or not?
				sesh = seshFac.openSession();
				sesh.insert("bookPreview", binfo);
				sesh.commit();

				resultVO = sesh.selectOne("getBookPrev", binfo);
				success = true;
			} catch (Exception e) {
			} finally {
				sesh.close();
			}
		}
		return resultVO;
	}

	// 예약정보 > 대기화면 전송시 select,차량번호 업데이트 후 다시 셀렉트
	public Book_Info packageBooking(String b_id, String blog_id) {

		SqlSession sesh = null;
		Book_Info resultVO = null;
		Book_Info finalVO = null;

		int retries = 0;
		boolean success = false;
		while (!success && retries < MAX_RETRIES) {
			try {
				sesh = seshFac.openSession();
				resultVO = sesh.selectOne("getBookingPSG", blog_id);
				resultVO.setB_id(b_id);
				sesh.update("packageBooking", resultVO);
				sesh.commit();
				finalVO = sesh.selectOne("getBookingPSG", blog_id);
				success = true;
			} catch (Exception e) {
				retries++;

				if (retries < MAX_RETRIES) {
					System.out.println("Transaction failed. Retrying in " + RETRY_DELAY_MS + " ms.");
					try {
						TimeUnit.MILLISECONDS.sleep(RETRY_DELAY_MS);
					} catch (InterruptedException ex) {
					}
				} else {
					throw new RuntimeException("Transaction failed after " + MAX_RETRIES + " retries.", e);
				}
			} finally {
				sesh.close();
			}
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
		} finally {
			sesh.close();
		}

		return result;
	}

	// 예약정보 조회 (차량번호로)
	public Book_Info getBookingByBID(String b_id) {

		SqlSession sesh = null;
		Book_Info result = null;

		int retries = 0;
		boolean success = false;
		while (!success && retries < MAX_RETRIES) {
			try {
				sesh = seshFac.openSession();
				result = sesh.selectOne("getBookingByBID", b_id);
				success = true;
			} catch (Exception e) {
				retries++;

				if (retries < MAX_RETRIES) {
					System.out.println("Transaction failed. Retrying in " + RETRY_DELAY_MS + " ms.");
					try {
						TimeUnit.MILLISECONDS.sleep(RETRY_DELAY_MS);
					} catch (InterruptedException ex) {
						// Handle interruption
					}
				} else {
					// If the maximum number of retries has been reached, throw an exception or
					// handle the failure
					throw new RuntimeException("Transaction failed after " + MAX_RETRIES + " retries.", e);
				}
			} finally {
				sesh.close();
			}
		}
		return result;
	}

	// 승객 회원가입
	public int pjoin(Passenger vo) {
		SqlSession sesh = null;
		int row = 0;
		try {
			sesh = seshFac.openSession();
			row = sesh.insert("pjoin", vo);
			sesh.commit();
		} catch (Exception e) {
			sesh.close();
		}

		return row;
	}

	// 버스 기사 회원가입
	public Driver djoin(Driver vo) {
		SqlSession sesh = null;
		Driver result = null;
		try {
			sesh = seshFac.openSession();
			sesh.insert("djoin", vo);
			sesh.commit();
			result = sesh.selectOne("dLogin", vo);
		} catch (Exception e) {
			sesh.close();
		}
		return result;
	}

	// 단순 노선 테이블 조회
	public R_Info getRouteByName(String routeno) {

		SqlSession sesh = null;
		R_Info result = null;
		try {
			sesh = seshFac.openSession();
			result = sesh.selectOne("getRouteByName", routeno);
		} finally {
			sesh.close();
		}

		return result;
	}

	// 운행정보 입력
	public int addShift(Shift shift) {

		SqlSession sesh = null;
		int result = 0;

		try {
			sesh = seshFac.openSession();
			result = sesh.insert("addShift", shift);
			sesh.commit();
		} finally {
			sesh.close();
		}

		return result;

	}

	// 승낙 거부 정보 업데이트용
	public int updateAcceptance(Book_Info bookInfo) {

		SqlSession sesh = null;
		int result = 0;

		int retries = 0;
		boolean success = false;
		while (!success && retries < MAX_RETRIES) {
			try {
				sesh = seshFac.openSession();
				result = sesh.update("updateAcceptance", bookInfo);
				sesh.commit();
				success = true;
			} catch (Exception e) {
			} finally {
				sesh.close();
			}
		}
		return result;
	}

	public Book_Info cancelCheck(String blog_id) {

		SqlSession sesh = null;
		Book_Info result = null;

		int retries = 0;
		boolean success = false;
		while (!success && retries < MAX_RETRIES) {
			try {
				sesh = seshFac.openSession();
				result = sesh.selectOne("cancelCheck", blog_id);
				success = true;
			} catch (Exception e) {
				retries++;

				if (retries < MAX_RETRIES) {
					System.out.println("Transaction failed. Retrying in " + RETRY_DELAY_MS + " ms.");
					try {
						TimeUnit.MILLISECONDS.sleep(RETRY_DELAY_MS);
					} catch (InterruptedException ex) {
						// Handle interruption
					}
				} else {
					// If the maximum number of retries has been reached, throw an exception or
					// handle the failure
					throw new RuntimeException("Transaction failed after " + MAX_RETRIES + " retries.", e);
				}
			} finally {
				sesh.close();
			}
		}
		return result;
	}

	public int delThenArchive(Book_Info toProcess) {

		SqlSession sesh = null;
		int result = 0;

		int retries = 0;
		boolean success = false;
		while (!success && retries < MAX_RETRIES) {
			try {
				sesh = seshFac.openSession(true);
				sesh.delete("writeOff", toProcess);
				result = sesh.insert("archivePsg", toProcess);
				success = true;
			} catch (Exception e) {
				retries++;

				if (retries < MAX_RETRIES) {
					System.out.println("Transaction failed. Retrying in " + RETRY_DELAY_MS + " ms.");
					try {
						TimeUnit.MILLISECONDS.sleep(RETRY_DELAY_MS);
					} catch (InterruptedException ex) {
						// Handle interruption
					}
				} else {
					// If the maximum number of retries has been reached, throw an exception or
					// handle the failure
					throw new RuntimeException("Transaction failed after " + MAX_RETRIES + " retries.", e);
				}
			} finally {
				sesh.close();
			}
		}
		return result;
	}

	public int updatePsgNum(String b_id) {

		SqlSession sesh = null;
		int result = 0;

		int retries = 0;
		boolean success = false;
		while (!success && retries < MAX_RETRIES) {
			try {
				sesh = seshFac.openSession();
				result = sesh.update("updatePsgNum", b_id);
				sesh.commit();
				success = true;
			} catch (Exception e) {
				retries++;

				if (retries < MAX_RETRIES) {
					System.out.println("Transaction failed. Retrying in " + RETRY_DELAY_MS + " ms.");
					try {
						TimeUnit.MILLISECONDS.sleep(RETRY_DELAY_MS);
					} catch (InterruptedException ex) {
						// Handle interruption
					}
				} else {
					// If the maximum number of retries has been reached, throw an exception or
					// handle the failure
					throw new RuntimeException("Transaction failed after " + MAX_RETRIES + " retries.", e);
				}
			} finally {
				sesh.close();
			}
		}
		return result;
	}

	public int updateBusLoc(Shift thisBus) {

		SqlSession sesh = null;
		int result = 0;

		try {
			sesh = seshFac.openSession();
			result = sesh.update("updateBusLoc", thisBus);
			sesh.commit();
		} finally {
			sesh.close();
		}

		return result;
	}

	public int rejectionUpdate(Book_Info bookInfo) {

		SqlSession sesh = null;
		int result = 0;

		try {
			sesh = seshFac.openSession();
			Book_Info intermed = sesh.selectOne("getBooking", bookInfo);
			intermed.setAccepted(false);

			sesh.delete("delBookInfo", bookInfo.getBlog_id());
			sesh.commit();

			result = sesh.insert("archiveBookingLog", intermed);
			sesh.commit();
		} finally {
			sesh.close();
		}

		return result;
	}

	public int addWarning(String p_id) {

		SqlSession sesh = null;
		int result = 0;

		try {
			sesh = seshFac.openSession();
			result = sesh.update("addWarning", p_id);
			sesh.commit();
		} finally {
			sesh.close();
		}

		return result;
	}

	public int delBookById(String blog_id) {

		SqlSession sesh = null;
		int result = 0;

		try {
			sesh = seshFac.openSession();
			result = sesh.delete("delBookById", blog_id);
			sesh.commit();
		} finally {
			sesh.close();
		}

		return result;
	}

	public int cancelUpdate(Book_Info theBooker) {

		SqlSession sesh = null;
		int result = 0;

		try {
			sesh = seshFac.openSession();
			Book_Info intermed = sesh.selectOne("getBooking", theBooker);
			intermed.setCanceled(true);
			;

			sesh.delete("delBookInfo", theBooker.getBlog_id());
			sesh.commit();

			result = sesh.insert("archiveBookingLog", intermed);
			sesh.commit();
		} finally {
			sesh.close();
		}

		return result;
	}

	public int offTheShift(Shift thisShift) {

		SqlSession sesh = null;
		int result = 0;

		try {
			sesh = seshFac.openSession(true);
			Shift intermed = sesh.selectOne("getShift", thisShift);
			sesh.delete("delShift", intermed);
			result = sesh.insert("archiveShift", thisShift);
		} finally {
			sesh.close();
		}

		return result;
	}

	public Book_Info getBookingByBlogID(String blog_id) {

		SqlSession sesh = null;
		Book_Info result = null;

		try {

			sesh = seshFac.openSession();
			result = sesh.selectOne("getBookingPSG", blog_id);
			sesh.commit();

		} finally {
			sesh.close();
		}

		return result;

	}
	
	// 승객 회원 탈퇴
		public int revoke(Passenger vo) {
			int row=0;
			SqlSession sesh= null;
			try {
				sesh=seshFac.openSession();
				row=sesh.delete("revoke",vo);
				sesh.commit();
			} finally {
				sesh.close();
			}
			return row;
		}

	// 버스 회원 탈퇴
		public int D_revoke(Driver vo) {
			int row=0;
			SqlSession sesh= null;
			try {
				sesh=seshFac.openSession();
				row=sesh.delete("D_revoke",vo);
				sesh.commit();
			} finally {
				sesh.close();
			}
			return row;
		}
		
		// 마이페이지 승객 비밀번호 변경
		public int np_pw(Passenger vo) {
			SqlSession sesh=null;
			int row=0;
			try {
				sesh=seshFac.openSession();
				row=sesh.update("np_pw",vo);
				sesh.commit();
			} finally {
				sesh.close();
			}
			return row;
		}
			
		// 마이페이지 휴대폰 변경
		public int p_ph(Passenger vo) {
			SqlSession sesh = null;
			int row =0;
			try {
				sesh=seshFac.openSession();
				row=sesh.update("p_ph",vo);
				sesh.commit();
			} finally {
				sesh.close();
			}
				return row;
		}
			
		// 마이페이지 기사 비밀번호 변경
			public int nd_pw(Driver vo) {
				SqlSession sesh=null;
				int row=0;
				try {
					sesh=seshFac.openSession();
					row=sesh.update("nd_pw",vo);
					sesh.commit();
				} finally {
					sesh.close();
				}
				return row;
			}

}

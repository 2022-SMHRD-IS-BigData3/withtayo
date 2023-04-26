<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>TEST</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

</head>

<style>

.nodeIds{
	display:none;
}
.resRouteId{
	display:none;
}
#searchResultTable table{
	border-collapse : collapse;
}
#searchResultTable tr, #searchResultTable td{
	border : 1px solid black;
}

</style>

<body>
	<h1>목적지 검색</h1>
	<div>
		<form class="form-inline">
			<table>
				<tr>
					<td colspan="2" class="form-group"><input type="text"
						class="form-control" id="departure" placeholder="출발지를 입력하세요">
						<div class="dropdown">
							<ul class="" id="dprtSrchDropdown">
							</ul>
						</div></td>
				</tr>
				<tr>
					<td colspan="2" class="form-group"><input type="text"
						class="form-control" id="arrival" placeholder="도착지를 입력하세요">
						<div class="dropdown">
							<ul class="" id="arrvSrchDropdown">
							</ul>
						</div></td>
				</tr>
				<tr>
					<td><input type="reset" class="btn btn-secondary"
						value="다시쓰기"></td>
					<td><input type="button" id="srchBtn" disabled class="btn btn-warning" value="정류장을 선택하세요"></td>
				</tr>
			</table>
		</form>
	</div>
	<hr>
	<div id="searchResultTable">
		<table>
			<tr>
				<td class="resRoute">노선이름</td>
				<td class="resRouteId">노선id(숨김)</td>
				<td></td>
				<td>예약</td>			
			</tr>
			<tr>
				<td colspan="4" class="arrvTime">남은 도착 시간</td>
			</tr>
			<tr>
				<td class="dprtNode">출발 정류장</td>
				<td class="arrvNode">도착 정류장</td>				
				<td></td>				
				<td><input class="favBtn" type="button" value="fav예시"></td>
			</tr>
		</table>
	
	</div>
		<hr>

	<div>
	<h3>즐겨찾기(사실 떵마려울때 빨리누르는 곳)</h3>
		<ul id="bookmarkList">
			<li><a href="#">여기!(예시)</a></li>
		</ul>
	<h3>최근 검색</h3>
		<ul id="recentSearch">
			<li><a href="#">거기!(예시)</a></li>
		</ul>
	</div>

	<script>
	// TODO : geolocation / fav / recent
	// 검색 버튼 클릭시 전송용
	let dprtNodeId = "";
	let arrvNodeId = "";
	let dprtName ="";
	let arrvName ="";
	let responses = []; // get the largest scope!!!!!!!!
	let routeResult = [];
	let resStop = [];
	let resRsps = null;
	
	$("#favBtn").hide();
	// 출발 도착 다 입력됐는지 확인
	let dprtCheck = false;
	let arrvCheck = false;
			
		$(document).ready(function() {
			// 출발지 검색용!!!!!############################
			$("#departure").on("keyup", function() {
				
				// 타자 칠때마다 검색 비활성화
				$("#srchBtn").prop("disabled", "disabled");
				$("#srchBtn").attr("class", "btn btn-warning");
				$("#srchBtn").attr("value", "먼저입력하라고~!!");
				dprtCheck = false;
				
				let query = $(this).val();
	//			console.log(query);
				$.ajax({
					url : 'Search',
					data : {
						keyword : query
					},
					success : function(response) {
					//	let resultList = JSON.parse(response);
						if(response!=undefined || response!=null){
							//	console.log(response);
								for(let i = 0 ; i < response.length ; i++){
									$("#dprtSrchDropdown").append("<span type='button' class='dprtPick'>"
																	+response[i]['nodenm']+"</span>"
																	+"<p class='nodeIds'>"+response[i]['nodeid']+"</p>"
																	+"<br>");
								}
						}
					},
					error : function(xhr, status, error){
						console.log("안되는디==>" + error);
					}
				});
				// 새로운 입력시 전 검색 내용 리셋
				$("#dprtSrchDropdown").empty();
			});
			
			// 도착지 검색용!!!!!############################
			$("#arrival").on("keyup", function() {

				// 타자 칠때마다 검색 비활성화
				$("#srchBtn").prop("disabled", "disabled");
				$("#srchBtn").attr("class", "btn btn-warning");
				$("#srchBtn").attr("value", "먼저입력하라고~!!");
				arrvCheck = false;
				
				let query = $(this).val();
				$.ajax({
					url : 'Search',
					data : {
						keyword : query
					},
					success : function(response) {
						if(response!=undefined || response!=null){
								for(let i = 0 ; i < response.length ; i++){
									$("#arrvSrchDropdown").append("<span type='button' class='arrvPick'>"
																	+response[i]['nodenm']+"</span>"
																	+"<p class='nodeIds'>"+response[i]['nodeid']+"</p>"
																	+"<br>");
								}
						}
					},
					error : function(xhr, status, error){
						console.log("안되는디==>" + error);
					}
				});
				$("#arrvSrchDropdown").empty();
			});
			
		});
		// 입력창 검색용 AJAX 끝 ##############################################	
	
		// 드랍다운 보이기
		$(".form-control").on("focusin", function(){
					$(".dropdown").show();
		});
		// 출발지 선택용 (선택완료 후 드랍다운 숨김) -> 나중에 리팩터링 할것
		$("#dprtSrchDropdown").on("click", "span", function(){
	//		console.log("clicked");
			let picked = $(this).text();
			$("#departure").val(picked);
			$("#dprtSrchDropdown").hide();
			// 검색용 정류장 id, 이름 저장 (id = deprecated, same below)
			dprtNodeId = $(this).next().text();
			dprtName = picked;
	//		console.log($("#departure").val());
			// 검색 버튼 활성
			dprtCheck = true;
			if(dprtCheck && arrvCheck){
				$("#srchBtn").removeAttr("disabled");
				$("#srchBtn").attr("value", "검색ㄱㄱ");
				$("#srchBtn").attr("class", "btn btn-success");
			}
		});
		// 도착지 선택용 (선택완료 후 드랍다운 숨김) -> SAME
		$("#arrvSrchDropdown").on("click", "span", function(){
	//		console.log("clicked");
			let picked = $(this).text();
			$("#arrival").val(picked);
			$("#arrvSrchDropdown").hide();
			// 검색용 정류장id 저장
			arrvNodeId = $(this).next().text();
			arrvName = picked;
	//		console.log(arrvNodeId);
	//		console.log($("#arrival").val());
			// 검색 버튼 활성
			arrvCheck = true;
			if(dprtCheck && arrvCheck){
				$("#srchBtn").removeAttr("disabled");
				$("#srchBtn").attr("value", "검색ㄱㄱ");
				$("#srchBtn").attr("class", "btn btn-success");
			}
		});
		
		// 대망으 검섁버튼#########################################################
		$("#srchBtn").on("click", function(){
			// alert("ㅎㅇㅇ");
			// 먼저 출발지 도착지 둘다 경유하는 노선 cross reference
			// callback hell 방지, response 2개 동시에 받기
			let requests = [];
			
			$.ajax({
				// 두방향 같은이름 정류소
				url : 'Search2',
				method : 'post',
				data : {dprtnm : dprtName, arrvnm : arrvName},
			// 첫번째 then
			}).then(function(results){
				
				let resArr = results.replace("[","").replace("]","").split(", ");
				// 4개 정류소 조회
				$.ajax({
					url : 'https://apis.data.go.kr/1613000/BusSttnInfoInqireService/getSttnThrghRouteList?serviceKey=38f8K%2FBb5kAAAS2jyZzjrfRmzjxFBS5HL6L256P5vOJ0ESqz2F7hUMTo%2FuzPe%2F7cBNR%2BzspWLdUHQxd6SbsXcg%3D%3D&pageNo=1&numOfRows=100&_type=json&cityCode=24&nodeid='+resArr[0],
					success : function(rsp){
						for(let k = 0 ; k < rsp.response.body.items.item.length ; k++){
							responses.push(rsp.response.body.items.item[k].routeid);
						}
					},
					error : function(error){
						console.log(error);
					}
				});
				$.ajax({
					url : 'https://apis.data.go.kr/1613000/BusSttnInfoInqireService/getSttnThrghRouteList?serviceKey=38f8K%2FBb5kAAAS2jyZzjrfRmzjxFBS5HL6L256P5vOJ0ESqz2F7hUMTo%2FuzPe%2F7cBNR%2BzspWLdUHQxd6SbsXcg%3D%3D&pageNo=1&numOfRows=100&_type=json&cityCode=24&nodeid='+resArr[1],
					success : function(rsp){
						for(let k = 0 ; k < rsp.response.body.items.item.length ; k++){
							responses.push(rsp.response.body.items.item[k].routeid);
						}
					},
					error : function(error){
						console.log(error);
					}
				});
				$.ajax({
					url : 'https://apis.data.go.kr/1613000/BusSttnInfoInqireService/getSttnThrghRouteList?serviceKey=38f8K%2FBb5kAAAS2jyZzjrfRmzjxFBS5HL6L256P5vOJ0ESqz2F7hUMTo%2FuzPe%2F7cBNR%2BzspWLdUHQxd6SbsXcg%3D%3D&pageNo=1&numOfRows=100&_type=json&cityCode=24&nodeid='+resArr[2],
					success : function(rsp){
						for(let k = 0 ; k < rsp.response.body.items.item.length ; k++){
							responses.push(rsp.response.body.items.item[k].routeid);
						}
					},
					error : function(error){
						console.log(error);
					}
				});
				$.ajax({
					url : 'https://apis.data.go.kr/1613000/BusSttnInfoInqireService/getSttnThrghRouteList?serviceKey=38f8K%2FBb5kAAAS2jyZzjrfRmzjxFBS5HL6L256P5vOJ0ESqz2F7hUMTo%2FuzPe%2F7cBNR%2BzspWLdUHQxd6SbsXcg%3D%3D&pageNo=1&numOfRows=100&_type=json&cityCode=24&nodeid='+resArr[3],
					success : function(rsp){
						for(let k = 0 ; k < rsp.response.body.items.item.length ; k++){
							responses.push(rsp.response.body.items.item[k].routeid);
						}
					},
					error : function(error){
						console.log(error);
					}
				});   
	//			console.log(responses); // this works
			// 	responses에는 4개정류장 지나는 노선 이름들 들어있음 다음 함수에서는 중복찾아 제거
				routeResult = secondOne(responses, routeResult);
			// 최강 n번째 then?
			}).then(function(dump2){
	//			console.log(dump2);
	//			routeResultObject = '함수추가';
	//			console.log(routeResult); // 드디어 된다 이 솥가튼
				routeResult.forEach(function(element){
					$.ajax({
						url : 'https://apis.data.go.kr/1613000/BusRouteInfoInqireService/getRouteAcctoThrghSttnList?serviceKey=38f8K%2FBb5kAAAS2jyZzjrfRmzjxFBS5HL6L256P5vOJ0ESqz2F7hUMTo%2FuzPe%2F7cBNR%2BzspWLdUHQxd6SbsXcg%3D%3D&pageNo=1&numOfRows=200&_type=json&cityCode=24&routeId='+element,
						success : function(rsps77){
							let arr = rsps77.response.body.items.item;
							let compArr = [];
							// arr 은 정류장 object 리스트임
							arr.forEach(function(elem){
						//		console.log(elem);
								compArr.push(elem.nodenm);
								// 준비해둔 dprtName, arrvName로 조회
							});
							let start = compArr.indexOf(dprtName);
							let end = compArr.indexOf(arrvName);
							if((parseInt(arr[start].nodeord)-parseInt(arr[end].nodeord))<0){
								resStop.push(arr[start]);
								resStop.push(arr[end]);
							}else{
								let start = compArr.lastIndexOf(dprtName);
								let end = compArr.lastIndexOf(arrvName);
								resStop.push(arr[start]);
								resStop.push(arr[end]);
							}
							
						},
						error : function(error){
							console.log("안되!" + error);
						}
					});
				
				})
			// 마지막에서 몇번째인지 모르는 then
			}).then(function(dumpThisAARGH){
	//			console.log(dumpThis);
		//		console.log(routeResult);
		//		console.log(resStop);
				$("#searchResultTable").empty();
				let jsonString = JSON.stringify(routeResult);
				$.ajax({
					type : "POST",
					url : "RouteCheck",
					// 리스트로 수정중 ########(01)######## 완료
					data : jsonString,
					contentType : "application/json;charset=utf-8",
					success : function(rsps99){
		//				console.log(rsps99);
						resRsps = rsps99;
						// 리스트로 수정중 ########(02)######## 
			//			<c:set var="theJson" value="${resRsps}"/>
						for(let p = 0 ; p < resRsps.length ; p++){
							$("#searchResultTable").append('<table class="resTables" id="srchIdx'+resRsps[p].routeid+'"><tr><td class="resRoute">'+resRsps[p].routeno+'</td><td class="resRouteId">'+resRsps[p].routeid+'</td><td></td><td><input type="button" value="예약"></td></tr><tr><td colspan="4" id="infoIdx'+resRsps[p].routeid+'" class="arrvInfo"></td></tr><tr><td class="dprtNode">출발 정류장</td><td class="arrvNode">도착 정류장</td><td></td><td><input class="favBtn" type="button" value="즐겨찾기"></td></tr></table><hr>');
						}
				//		$("#resRoute").text(resRsps.routeno); // DEPRECATED!!!!!
				//		$("#resRouteId").text(resRsps.routeid);
			//			console.log(resRsps);
					},
					error : function(error){
						console.log(error);
					}
				});

			// 진짜 마지막 then ㅋㅋㅋㅋ (도착정보 갱신용)
			}).then(function(dumpThisShite){
				console.log("INSIDE THE LAST THEN");
				setInterval(function(){
					
					for(let t = 0 ; t < routeResult.length ; t++){
			//			console.log(routeResult[t]);
			//			console.log(resRsps[t].routeid);
						$.ajax({
							// 리스트로 뽑을 때 수정할 것 ajax 를 for에 돌려
							url : 'https://apis.data.go.kr/1613000/ArvlInfoInqireService/getSttnAcctoSpcifyRouteBusArvlPrearngeInfoList?serviceKey=38f8K%2FBb5kAAAS2jyZzjrfRmzjxFBS5HL6L256P5vOJ0ESqz2F7hUMTo%2FuzPe%2F7cBNR%2BzspWLdUHQxd6SbsXcg%3D%3D&pageNo=1&numOfRows=10&_type=json&cityCode=24&nodeId='+dprtNodeId+'&routeId='+routeResult[t],
							success : function(rsps88){
								console.log("도착정보 5초마다 갱신중");
								console.log(rsps88);
						
								try{
									console.log("TRY SUCCESSFUL");
									$("#infoIdx"+resRsps[t].routeid).html("<span style='color:red'>"+rsps88.response.body.items.item.vehicletp+"입니다.</span> "+Math.floor(parseInt(rsps88.response.body.items.item.arrtime)/60) + "분 남음 " + rsps88.response.body.items.item.arrprevstationcnt + " 정거장 남음");
									// 리스트로 뽑을 때 수정 할 것(클래스로 바꿔)
									$(".favBtn").show();
								}catch(error){
									console.log("TRY FAILED");
									$("#infoIdx"+resRsps[t].routeid).html("한참 기다려야되");
									// 리스트로 뽑을 때 수정 할 것
									$(".favBtn").show();
								}
							},
							error : function(error){
								console.log("으잉?" + error);
							}
						});
					}
				}, 5000);
				
			}).then(function(dumper){
				// 최근검색
		//		console.log(dprtName);
		//		console.log(arrvName);
				$.ajax({
					url : 'AddRecent',
					data : {dprtName : dprtName, arrvName : arrvName},
					success : function(rsps777){
						
						console.log(rsps777 + "RECENT SEARCH HISTORY ADDED.");
						
						// 최근 검색 추가 완료
						
						// 검색 버튼 연타했을 때 다른 노선들 중복되서 쌓이지 않도록 초기화 와 설명 친절하다
						resStop.length = 0;
						responses.length = 0;
						routeResult.length = 0;
						resRsps = null;
					},
					error : function(error){
						console.log(error);
					}
				});
			}).catch(function(error){
				console.log(error);
			});
			
			// ####################결과 정류장########################
		//	console.log(resStop); // THE MONEY CODE ####
			// ####################결과 노선##########################
		//	console.log(routeResult); // THE SECOND MONEY CODE ####
			// #####################################################
			
		});// 검색 버튼 on click  끝
		
		// 즐겨찾기 버튼 클릭
		// TODO : 
		// 리스트로 뽑을 때 수정할거 (클래스로 바꾸고 알고리즘 추가)
		$(".favBtn").on("click", function(){
			let routeToSend = $("#resRouteId").text();
			let routeNameToSend = $("#resRoute").text();
			$.ajax({
				method : 'GET',
				url : 'AddFav',
		//		contentType : "text/html;charset=UTF-8",
				// 리스트로 뽑을 때 수정할 거
				data : {routeName : routeNameToSend, routeInfo : routeToSend, dprtNode : dprtNodeId, arrvNode : arrvNodeId},
				success : function(favRsps){
			//		console.log("insert result:"+favRsps);
					if(parseInt(favRsps)==1){
						// 또는 숨기던지
						$("#favBtn").attr("value", "추가완료!");
						$("#favBtn").attr("disabled");
					}
				},
				error : function(error){
					console.error(error);
				}
			});
		});
		
		// 함. 수 .들
		// nested
		function secondOne(responses, routeResult){
			const dupes = {};
			for (let n = 0 ; n < responses.length ; n++){
		//		console.log("looping");
				if(dupes[responses[n]] === undefined) {
					dupes[responses[n]] = 1;
				}else{
					dupes[responses[n]]++;
				}
			}
			for (let stuff in dupes){
				if(dupes[stuff] > 2){
					if(!routeResult.includes(stuff)){
						routeResult.push(stuff);
					}
				}
			}
			return routeResult;
		}
		
		// 아래 : 페이지 로딩시(또는 새로고침) 즐겨찾기 갱신
		$.ajax({
			url : 'GetFav',
			success : function(sucResp){
	//			console.log(sucResp);
				if(sucResp!=null){
					$("#favBtn").hide();
					for(let y = 0 ; y < sucResp.length ; y++){
						$("#bookmarkList").html("<li><a href='#'>"+sucResp[y].routeno+"</a></li>");
					}
				}else{
					$("#favBtn").show();
				}
			},
			error : function(error){
				console.error(error);
			}
		});
		$.ajax({
			url : 'GetRecent',
			success : function(sucResp2){
				console.log(sucResp2);
				for(let x = 0 ; x < sucResp2.length ; x++){
					$("#recentSearch").html("<li><a href='#'>"+sucResp2[x].rec_dprt+"에서 "+sucResp2[x].rec_arrv+"까지</a></li>");
				}
			}
		});
		
		// 페이지 로딩시 최근 검색 갱신
		
		
		
	</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ include file="../inc/main2Top.jsp"%>
<link type="text/css" rel="stylesheet"
	href="<c:url value='/resources/css/mysec.css' />" />
	
<script type="text/javascript">
    	function mileTitle1(item, curPage){
    		$("#mileaebecSeq").val(item);
    		$("#currentPage").val(curPage);
    		$("form[name=frmMile]").submit();
    	}  
    	
    	function pageFunc(curPage){
    		$("#currentPage").val(curPage);
    		$("form[name=frmMile]").submit();
    	}
    	
    	$(function(){
    		$(".chkMileage").each(function(){
    			$(this).click(function(){
    				$(this).css("font-weight", "bold");
    				$(this).css("color", "red");
					
    			});
    		});
    		
    	});
</script>

<!-- 페이지 만들떄마다 복붙 -->
   <div style="width: 13%; float: left; height: 100%;">
      <!-- left side -->
      <aside class="left-sidebar" style="width: 13%;">
         <div class="logo" style="margin-bottom: 63%;">
            <a href="<c:url value='/index.do'/>" style="color: white; 
               font-size: 2.5em; font-family: 'Limelight', cursive;">
               Delight 
            </a>
         </div>
         
         <nav class="left-nav" style="margin-top: 100%;">
            <ul id="nav">
               <li class="active"><a href="<c:url value='/performance/pfRanking.do'/>">랭킹</a></li>
               <li><div style="width: 130px; border: 1px solid white; margin-left: 13%; margin-top: 10px;"></div></li>
               <li><a href="<c:url value='/performSearchResult/theaterSearch.do?type=AAAA'/>">연극</a></li>
               <li><a href="<c:url value='/performSearchResult/musicalSearch.do?type=AAAB'/>">뮤지컬</a></li>
               <li><a href="<c:url value='/performSearchResult/areaSearch.do'/>">지역별</a></li>
               <li><a href="<c:url value='/performSearchResult/periodSearch.do'/>">기간별</a></li>
               <li><div style="width: 130px; border: 1px solid white; margin-left: 13%; margin-top: 10px;"></div></li>
               <li><a href="<c:url value="/mainSearchResult/doReservation.do"/>">예매하기</a></li>
            </ul>
         </nav>
      </aside>
      
      <!-- left side -->
      <!-- 풀테스트 -->
   </div>
	<!-- div안에서작업 그외엔 건들지말것 -->

<!-- div안에서작업 그외엔 건들지말것 -->
<div style="width: 87%; float: right;">
	<form name="frmMile" method="post" action="<c:url value='/member/myMileageTitle1.do'/>">
		<input type="hidden" name="currentPage" id="currentPage" value="${param.currentPage }">
		<input type="hidden" name="mileaebecSeq" id="mileaebecSeq" value="${param.mileaebecSeq }">
	</form>
	
	<section class="mysec" style="margin-top: 5%;">
		<div class="mysecDiv">
			<h2 class="mytit" style="margin-bottom: 0px;">적립금</h2>
			<br><br>
			
			<div id="myMileageSubDiv" style="width:84%; height:325px; border-top:3px solid black;margin-top:7px;">
				<p id="myMileageSubP1" style="margin-bottom: 60px;margin-top: 10px;">
					<img style="width: 100px;height: 100px;" src="<c:url value='/resources/images/loginUser.png'/>">
					<span>회원 등급 : </span><span style="font-size: 15px;font-weight: bold;">${memberVo.gradeName}</span><br>
					<span>회원명 :  </span><span style="font-size: 15px;font-weight: bold;">${(memberVo.username)}</span><br> 
					<span>이메일 : </span><span style="font-size: 15px;font-weight: bold;">${email}</span>
				</p>
				
				<span style="font-size: 20px;margin-bottom: 10px;">Leave Mileage</span><br>
				<img style="width: 45px;height: 45px;" src="<c:url value='/resources/images/cash.png'/>">
				<p id="myMileageSubP2" style="font-size:1.5em;font-weight: bold;font-family:맑은고딕;margin-bottom: 10px;
					display: inline-block;background: aliceblue;margin-top: 10px;margin-left: 10px;">
					<fmt:formatNumber value="${memberVo.mileagePoint}" pattern="#,###"/>원
				</p>
				<br>
				<p style="color: red;font-size: 12px;font-weight: bold;" id="myMileageSubP3">
					- 적립금은 결제 완료시 지급됩니다.
				</p>
				<p style="color: red;font-size: 12px;font-weight: bold;" id="myMileageSubP4">
					- 후기/홍보 게시판 글 작성 시 적립금이 지급됩니다.
				</p>
			</div>
			
			<ul>
				<li class="chkMileage" id="mileTitle1" style="float:left;padding-bottom:1%;padding-right:1%" onclick="mileTitle1(2,1);">전체</li>
				<li class="chkMileage" id="mileTitle2" style="float:left;padding-bottom:1%;padding-right:1%" onclick="mileTitle1(5,1);">사용</li>
				<li class="chkMileage" id="mileTitle3" style="float:left;padding-bottom:1%;" onclick="mileTitle1(1,1);">적립</li>
			</ul>
			
			<table class="mytable">
				<colgroup>
					<col style="width: 200px">
					<col style="width: 400px">
					<col style="width: 400px">
					<col style="width: 400px">
				</colgroup>

				<thead>
					<tr>
						<th id="heading" scope="col">상태</th>
						<th id="heading" scope="col">적립금</th>
						<th id="heading" scope="col">등록날짜</th>
						<th id="heading" scope="col">적립날짜</th>
					</tr>
				</thead>

				<tbody id="mybody">
					<c:if test="${empty list }">
						<tr class="likeTr">
							<td colspan="4" style="text-align: center;">
								마일리지 내역이 존재하지 않습니다.
							</td>
						</tr>
					</c:if>
					
					<c:if test="${!empty list }">
						<!-- 반복 시작-->
						<c:forEach var="map" items="${list}">
						<tr class="likeTr">
							<td style="text-align: center; padding-right: 20px;">
								<c:set var="mileageExplain" value="${map['MILEAGE_BEC']}"/>
								
								<p class="mybodylikeP">
									${fn:split(mileageExplain,' ')[1]} 
								</p>
							</td>
							
							<td style="text-align: center;">
								<c:set var="mileaebacSeq" value="${map['MILEAEBEC_SEQ']}" />
								
								<c:if test="${mileaebacSeq==1}">
									<p class="mybodylikeP" >
										+${map["MILEAGE_POINT"]}원
									</p>
								</c:if>
							
								<c:if test="${mileaebacSeq==5}">
									<p class="mybodylikeP" >
										-${map["MILEAGE_POINT"]}원
									</p>
								</c:if>
							</td>
							
							<td style="text-align: center;">
								<p class="mybodylikeP" >
									<fmt:parseDate value="${map['MILEAGE_REG']}" var='mileage_date' pattern='yyyy-MM-dd HH:mm'/>
									<fmt:formatDate value="${mileage_date}" pattern="yyyy-MM-dd HH:mm"/>
								</p>
							</td>
							
							<td style="text-align: center;">
								<p class="mybodylikeP" >
									<fmt:parseDate value="${map['MILEAGE_REG']}" var='mileage_date' pattern='yyyy-MM-dd HH:mm'/>
									<fmt:formatDate value="${mileage_date}" pattern="yyyy-MM-dd HH:mm"/>
								</p>
							</td>
						</tr>
						</c:forEach>
					</c:if>
				</tbody>
				<!-- 반복 끝-->
			</table>
			
			<!-- [1] -->
			<div id="page">
				<!-- 이전블럭으로 이동 -->
				<c:if test="${pagingInfo.firstPage>1 }">
					<a class="imgblock" href="#" onclick="pageFunc(1)"> <img
						src="<c:url value='/resources/images/first.gif'/>" alt="">
					</a>
					<a class="imgblock" href="#" onclick="pageFunc(${pagingInfo.firstPage-1})"> <img
						src="<c:url value='/resources/images/first2.gif'/>" alt="이전 블럭으로">
					</a>
				</c:if>

				<!-- 페이지 번호 추가 -->
				<!-- [1][2][3][4][5][6][7][8][9][10] -->
				<c:forEach var="i" begin="${pagingInfo.firstPage}"
					end="${pagingInfo.lastPage }">
					<c:if test="${i==pagingInfo.currentPage }">
						<span> ${i}</span>
					</c:if>
					<c:if test="${i!=pagingInfo.currentPage }">
						<a href="#" onclick="pageFunc(${i})"> ${i}</a>
					</c:if>
				</c:forEach>
				<!--  페이지 번호 끝 -->

				<!-- 다음블럭으로 이동 -->
				<c:if test="${pagingInfo.lastPage< pagingInfo.totalPage}">
					<a class="imgblock" href="#" onclick="pageFunc(${pagingInfo.lastPage+1})"> <img
						src="<c:url value='/resources/images/last2.gif'/>" alt="">
					</a>
					<a class="imgblock" href="#" onclick="pageFunc(${pagingInfo.totalPage})"> <img
						src="<c:url value='/resources/images/last.gif'/>" alt="">
					</a>
				</c:if>
			</div>
			<!-- [1] -->
			
		</div>
	</section>
</div>
<!-- div안에서작업 그외엔 건들지말것 -->

<%@ include file="../inc/main2Bottom.jsp"%>
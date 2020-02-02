<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link type="text/css" rel="stylesheet"
	href="<c:url value='/resources/css/mysec.css' />" />

<%@ include file="../inc/main2Top.jsp"%>
<script type="text/javascript">
	$(function(){
		$(".refReason").first().prop('checked', true); 
		
		$("form[name=frmCan]").submit(function(){
			if(!confirm("정말 환불신청하시겠습니까?")){//아니요일경우
				event.preventDefault();
			}
		});
	});
</script>
<!-- 페이지 만들떄마다 복붙 -->
<div style="width: 13%; float: left; height: 100%;">
	<!-- left side --> 
	<aside class="left-sidebar" style="width: 13%;">
		<div class="logo" style="margin-bottom: 63%;">
			<a href="#welcome"
				style="color: white; font-size: 2.5em; font-family: 'Limelight', cursive;">
				Delight </a>
		</div>

		<nav class="left-nav" style="margin-top: 100%;">
			<ul id="nav">
				<li class="active"><a href="#contact-form">Contact Form</a></li>
				<li><a href="#subscription-form">Subscription Form</a></li>
				<li><a href="#video">Video Tutorial</a></li>
				<li><a href="#credit">Source and Credit</a></li>
				<li>
					<div
						style="width: 130px; border: 1px solid white; margin-left: 13%; margin-top: 10px;"></div>
				</li>
			</ul>
		</nav>
	</aside>
	<!-- left side -->
</div>
<!-- 페이지 만들떄마다 복붙 -->

<!-- div안에서작업 그외엔 건들지말것 -->

<div style="width: 87%; float: right;">
	<section class="mysec" style="margin-top: 5%;">
		<form action="<c:url value='/member/myreserCancle.do' />" name="frmCan" method="post">
		<div class="mysecDiv">
			<h2 class="mytit">예매 취소</h2>
			<dl class="cansledl"><dt>결제번호:</dt><dd>${map['PAY_SEQ'] }<dd>
			<dt>결제일자:</dt><dd><fmt:formatDate value="${map['REG_DATE'] }" pattern="yyyy-MM-dd" /></dd></dl>
			<table class="mytable">
				<colgroup>
					<col style="width: 350px">
					<col style="width: 159px">
					<col style="width: 185px">
					<col style="width: 275px">
					<col style="width: 275px">
					<col style="width: 140px">
				</colgroup>

				<thead>
					<tr>
						<th id="heading" scope="col">제목</th>
						<th id="heading" scope="col">예매일</th>
						<th id="heading" scope="col">예매번호</th>
						<th id="heading" scope="col">매수/가격</th>
						<th id="heading" scope="col">관람일시</th>
						<th id="heading" scope="col">좌석</th>
					</tr>
				</thead>

				<tbody id="mybody">
					<!-- 반복 시작-->
					<tr>
						<td style="text-align: left">
							<div>
								<img alt="" src="${poster }">
							</div>
							<p class="mybodyP">${map['PERFOMTYPE'] }<br>${map['PRFNM'] }</p>
						</td>
						<td style="text-align: center"><fmt:formatDate value="${map['RES_DATE'] }" pattern="yyyy-MM-dd"/></td>
						<td style="text-align: center">${map['PAY_TICKET_NUMBER'] }</td>
						<td style="text-align: center">${map['BOOKING'] }/<fmt:formatNumber value="${map['PAY_PRICE'] }" pattern="#,###" />원</td>
						<td style="text-align: center"><fmt:formatDate value="${map['SELECT_DATE'] }" pattern="yyyy-MM-dd"/>/${map['SELECT_TIME'] }</td>
						<td style="text-align: center">${map['SEAT_CLASS'] }</td>
					</tr>
				</tbody>
				<!-- 반복 끝-->
			</table>
			
			<div class="canslereser2">
			 취소사유
			</div>
			<div class="cansleList2">
 			<label class="cansleTitle">환불사유 선택해주세요.</label>
 			<c:forEach var="refundbecVo" items="${refundlist }"> 
			<label><input type="radio" class="refReason" name="refundbecSeq" value="${refundbecVo.refundbecSeq }">${refundbecVo.detail }</label>
 			</c:forEach>
			</div>
			
			<div class="canslereser">
			결제금액
			</div>
			<div class="cansleList_layout">
			<div>
			<div class="cansleList">
 			<label class="cansleTitle">주문합계</label> <p>${map['PAY_PRICE'] }</p>
			</div>
			<div class="cansleList">
 			<label class="cansleTitle">기본할인</label> <p class="gkfdls">5%</p>
			</div>
			<div class="cansleList">
 			<label class="cansleTitle">마일리지사용</label> <p class="gkfdls">${map['USEDMILEAGE'] }</p>
			</div>
			<div class="cansleList">
 			<label class="cansleTitle">최종금액</label> <p>${map['PAY_PRICE'] }</p>
			</div>
			</div>
			<div class="MycanInfo">
			</div>
			</div>
			<label class="cansletjfaud">
			<span>※취소안내</span><br><br>
			- 주문취소 후 마일리지는 관리자 승인이 되면 즉시 반환되며 다시 사용하실 수 있습니다.<br><br>
			- 환불신청후 재취소는 불가하며 환불내용을 정확히 확인후 신청해주시기바랍니다.<br><br>
			- 예매취소 시 취소 시점에따라 취소 수수료가 부과될 수 있습니다.<br><br>
			- 취소신청 후 영업일에 따라 3~5일 소요 됩니다. 
			</label><br>
			<input type="hidden" name="reservationSeq" value="${param.reservationSeq }">
			<input type="hidden" name="paySeq" value="${map['PAY_SEQ'] }">
			<input type="hidden" name="refundPrice" value="${map['PAY_PRICE'] }">
			
			<input type="submit" class="cansleSub" value="취소하기">
		</div>
		</form>
	</section>
</div>
<!-- div안에서작업 그외엔 건들지말것 -->

<%@ include file="../inc/main2Bottom.jsp"%>
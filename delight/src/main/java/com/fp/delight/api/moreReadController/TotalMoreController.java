/*package com.fp.delight.api.moreReadController;

import java.io.IOException;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fp.delight.api.moreRead.ApiTest_pfSearchMore;
import com.fp.delight.performent.model.PerformentListVO;

@Controller
@RequestMapping("/mainSearchResult")
public class TotalMoreController {
	private static final Logger logger=LoggerFactory.getLogger(TotalMoreController.class);
	
	@RequestMapping("/totalMoreRead.do")
	@ResponseBody
	public Object totalMoreRead(HttpServletRequest request) {
		String type=request.getParameter("type");
		String sido=request.getParameter("sido");
		String gugun=request.getParameter("gugun");
		String stdate=request.getParameter("stdate");
		String eddate=request.getParameter("eddate");
		String perfomName="";request.getParameter("perfomName");
		int page=request.getParameter(page);
		
		if(perfomName!=null && !perfomName.isEmpty()) {
			perfomName=perfomName.replace(" ", "");
		}
		
		logger.info("표 설정 공연 검색 파라미터 type={},sido={}",type,sido);
		logger.info("표 설정 공연 검색 파라미터 gugun={},stdate={}",gugun,stdate);
		logger.info("표 설정 공연 검색 파라미터 eddate={},perfomName={}",eddate,perfomName);
		logger.info("표 설정 공연 검색 파라미터 page={}",page);
		
		if(perfomName==null) perfomName="";
		ApiTest_pfSearchMore api=new ApiTest_pfSearchMore();
		
		List<PerformentListVO> list=new ArrayList<PerformentListVO>();;
		try {
			list = api.totalPMoreRead(type, sido, gugun, stdate, eddate, perfomName, page);
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return list;
	}
}
*/
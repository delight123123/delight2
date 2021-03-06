package com.fp.delight.index.controller;

import java.io.IOException;
import java.net.MalformedURLException;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import com.fp.delight.api.ApiTest_Index;
import com.fp.delight.index.model.IndexVisitorsService;
import com.fp.delight.index.model.IndexVisitorsVO;
import com.fp.delight.performent.model.PerformentListVO;


@Controller
public class IndexController{
	
	private static final Logger logger
		=LoggerFactory.getLogger(IndexController.class);
	
		@Autowired
		IndexVisitorsService indexVisitorsService;
	
		@RequestMapping(value = "/index.do")
		public String Index_get(Model model, @ModelAttribute IndexVisitorsVO indexVisitorsVO) {
			logger.info("Index 화면 보여주기");

	    	try {
	    		ApiTest_Index apiTest = new ApiTest_Index();
	    		List<PerformentListVO> alist = apiTest.receiveAPI();

	    		int count = indexVisitorsService.countVisitors(indexVisitorsVO);
	    		logger.info("방문자 수 체크 countvisitors={}", count);
	    		    				
				model.addAttribute("alist", alist);
	    	} catch (MalformedURLException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
	    	
			return "index";
		}

	@RequestMapping("/index2.do")
	public void index2() {
		
	}
}



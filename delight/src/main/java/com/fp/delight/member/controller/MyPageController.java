package com.fp.delight.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member")
public class MyPageController {
	private static final Logger logger
	=LoggerFactory.getLogger(MyPageController.class);
	
	


	@RequestMapping("/imp/myreview.do")
	public void myreview() {
		
	}
	


	@RequestMapping("/myreviewList.do")
	public void myreviewList() {
		
	}

	@RequestMapping("/myWriteReview.do")
	public void myWriteReview() {
		
	}
	@RequestMapping("/NmReview.do")
	public void NmReview() {
		
	}
	@RequestMapping("/PhotoReview.do")
	public void PhotoReview() {
		
	}
	@RequestMapping("/myWriteReviewList.do")
	public void myWriteReviewList() {
		
	}
	@RequestMapping("/myreserCancle.do")
	public void myreserCansle() {
		
	}


}

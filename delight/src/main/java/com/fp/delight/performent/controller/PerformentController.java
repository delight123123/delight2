
package com.fp.delight.performent.controller;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fp.delight.performent.model.PerformentListVO;

///performance/pfDetail.do?mt20id=${vo.mt20id }'/>">
@Controller
@RequestMapping("/performance")
public class PerformentController {
	private final Logger logger
		= LoggerFactory.getLogger(PerformentController.class);
	
	@RequestMapping("/pfDetail.do")
	public String performentList_post(@RequestParam String perfomid,
			Model model) {
		logger.info("메인 페이지 공연 포스터 클릭=>, 공연 아이디 perfomid : ,"+perfomid);
		
		PerformentAPI perform = null; 
		Map<String, Object> map = null;		//공연상세보기 - 전체 데이터 사용
		Map<String, Object> map2 = null;	//공연지역상세 - 위도,경도 사용
		
		
		if(perfomid!=null && !perfomid.isEmpty()) {
			perform = new PerformentAPI();
			//공연전체
			map=perform.performDetail(perfomid);						
			
			//위도,경도용
			map2=perform.performLocation((String)map.get("mt10id"));	
			
			//추천공연 - 날짜지정 후 랜덤 사진 뿌려주기
			List<PerformentListVO> list=perform.performRecommend();
			
			//공연 상세보기 포스터 데이터
			model.addAttribute("map2", map);	
			logger.info("공연 상세보기 메서드 호출 결과, map={}", map);
			
			//위도, 경도
			model.addAttribute("map2_location", map2);
			logger.info("공연 상세보기 지역 위도, 경도 호출 map2={}",map2);
			
			//추천공연
			model.addAttribute("list", list);
			logger.info("추천 공연, map3={}", list);
		}
		return "performance/pfDetail";
	}
	
	//결제진행창 보여주기
	@RequestMapping(value = "/pfReservation.do", method = RequestMethod.GET)
	public String showReservation() {
		logger.info("결제진행화면 보여주기");
		
		return "performance/pfReservation";
	}
}


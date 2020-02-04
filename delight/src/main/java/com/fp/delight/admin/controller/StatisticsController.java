package com.fp.delight.admin.controller;

import java.util.List;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fp.delight.admin.statistics.model.ChartVO;
import com.fp.delight.admin.statistics.model.StatisticsService;

@Controller
@RequestMapping("/admin/numericalStatement")
public class StatisticsController {
	private static final Logger logger=LoggerFactory.getLogger(StatisticsController.class);
	
	@Autowired
	private StatisticsService statisticesService;
	
	@RequestMapping("/memberStatistics.do")
	public void memberStatistics(Model model) {
		logger.info("회원 통계 보이기");
		List<Map<String, Object>> list=statisticesService.gendercount();
		for(Map<String, Object> map:list) {
			if(((String)map.get("GENDER")).equals("여")) {
				//woman=Integer.parseInt((String) map.get("COUNT"));
				model.addAttribute("woman", map.get("COUNT"));
			}else if(((String)map.get("GENDER")).equals("남")) {
				//man=Integer.parseInt((String) map.get("COUNT"));
				model.addAttribute("man", map.get("COUNT"));
			}
		}
		List<ChartVO> agegroup=statisticesService.agegroup();
		
		JSONArray jso=new JSONArray();
		for(int i=0;i<agegroup.size();i++) {
			JSONObject ob=new JSONObject();
			jso.put(agegroup.get(i).getTotal());
		}
		
		
		model.addAttribute("agegroup", jso);
	}
}

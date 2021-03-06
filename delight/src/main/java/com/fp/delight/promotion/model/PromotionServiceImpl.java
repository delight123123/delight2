package com.fp.delight.promotion.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PromotionServiceImpl implements PromotionService{
	
	@Autowired
	private PromotionDAO promotionDao;
	
	@Override
	public PromotionVO myPromotionList(String id){
		return promotionDao.myPromotionList(id);
		
	}
	
	@Override
	public int insertPromotion(PromotionVO promotionVo) {
		int cnt=0;
		
		try {
			cnt=promotionDao.insertPromotion(promotionVo);
			
		} catch(RuntimeException e) {
			e.printStackTrace();
			cnt=-1;
		}
		
		return cnt;
	}
	
	@Override
	public PromotionVO selectByPromoteSeq(int promoteSeq) {
		return promotionDao.selectByPromoteSeq(promoteSeq);
	}
	
	@Override
	public int updatePromotion(PromotionVO promotionVo) {
		return promotionDao.updatePromotion(promotionVo);
	}
	
	@Override
	public int deletePromotion(int promoteSeq) {
		return promotionDao.deletePromotion(promoteSeq);
	}
}

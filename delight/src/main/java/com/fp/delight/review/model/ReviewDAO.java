package com.fp.delight.review.model;

import java.util.List;
import java.util.Map;

import com.fp.delight.common.DateSearchVO;
import com.fp.delight.reservation.model.ReservationVO;

public interface ReviewDAO {
	List<Map<String, Object>>selectReviewList(DateSearchVO dateSearchVo);
	int TotalRecord(DateSearchVO dateSearchVo);
	ReservationVO reservationDetail(int reservation_seq);
}

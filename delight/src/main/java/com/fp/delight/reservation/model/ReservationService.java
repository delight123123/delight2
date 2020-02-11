package com.fp.delight.reservation.model;

import java.util.List;
import java.util.Map;

import com.fp.delight.common.DateSearchVO;

public interface ReservationService {
	List<Map<String, Object>>selectReserNew5(String userid);
	List<Map<String, Object>>selectReserList(DateSearchVO dateSearchVo);
	int TotalRecord(DateSearchVO dateSearchVo);
	List<Map<String, Object>> selectCanNew5(String userid);
	List<Map<String, Object>>selectCanList(DateSearchVO dateSearchVo);
	int canTotalRecord(DateSearchVO dateSearchVo);
	Map<String, Object>selectCanDetail(ReservationVO reservationVo);
	List<Map<String, Object>> noneSelectReserList(DateSearchVO dateSearchVo);
	int noneTotalRecord(DateSearchVO dateSearchVo);
}

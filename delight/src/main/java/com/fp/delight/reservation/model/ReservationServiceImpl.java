package com.fp.delight.reservation.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fp.delight.common.DateSearchVO;

@Service
public class ReservationServiceImpl implements ReservationService{
	
	@Autowired
	private ReservationDAO reservationDao;

	@Override
	public List<Map<String, Object>> selectReserNew5(String userid) {
		return reservationDao.selectReserNew5(userid);
	}

	@Override
	public List<Map<String, Object>> selectReserList(DateSearchVO dateSearchVo) {
		return reservationDao.selectReserList(dateSearchVo);
	}

	@Override
	public int TotalRecord(DateSearchVO dateSearchVo) {
		return reservationDao.TotalRecord(dateSearchVo);
	}

}
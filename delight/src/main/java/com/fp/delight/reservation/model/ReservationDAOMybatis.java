package com.fp.delight.reservation.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fp.delight.common.DateSearchVO;

@Repository
public class ReservationDAOMybatis implements ReservationDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	private String namespace="com.mybatis.mapper.reservation.";

	@Override
	public List<Map<String, Object>> selectReserNew5(String userid) {
		return sqlSession.selectList(namespace+"selectReserNew5",userid);
	}

	@Override
	public List<Map<String, Object>> selectReserList(DateSearchVO dateSearchVo) {
		return sqlSession.selectList(namespace+"selectReserList",dateSearchVo);
	}

	@Override
	public int TotalRecord(DateSearchVO dateSearchVo) {
		return sqlSession.selectOne(namespace+"TotalRecord",dateSearchVo);
	}

	@Override
	public List<Map<String, Object>> selectCanNew5(String userid) {
		return sqlSession.selectList(namespace+"selectCanNew5",userid);
	}

	@Override
	public List<Map<String, Object>> selectCanList(DateSearchVO dateSearchVo) {
		return sqlSession.selectList(namespace+"selectCanList",dateSearchVo);
	}

	@Override
	public int canTotalRecord(DateSearchVO dateSearchVo) {
		return sqlSession.selectOne(namespace+"canTotalRecord",dateSearchVo);
	}

	@Override
	public Map<String, Object> selectCanDetail(ReservationVO reservationVo) {
		return sqlSession.selectOne(namespace+"selectCanDetail",reservationVo);
	}

	@Override
	public List<Map<String, Object>> noneSelectReserList(DateSearchVO datesearcgVo) {
		return sqlSession.selectList(namespace+"noneSelectReserList",datesearcgVo);
	}

	@Override
	public int noneTotalRecord(DateSearchVO dateSearchVo) {
		return sqlSession.selectOne(namespace+"noneTotalRecord",dateSearchVo);
	}
	
}

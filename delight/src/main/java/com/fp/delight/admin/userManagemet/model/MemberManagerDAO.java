package com.fp.delight.admin.userManagemet.model;

import java.util.List;
import java.util.Map;

import com.fp.delight.member.model.MemberVO;

public interface MemberManagerDAO {
	List<MemberVO> noneWithdrawal(MemberVO memberVo);
	int noneWithdrawalTotal(MemberVO memberVo);
	List<Map<String, Object>> withdrawal(MemberVO memberVo);
	int withdrawalTotal(MemberVO memberVo);
	int forcedExit(String userid);
	int cancle(String userid);
	List<MemberVO> userAll();
	List<Map<String, Object>> paymentList(MemberVO memberVo);
	int paymentTotal(MemberVO memberVo);
	int totalpayment(String userid);
	int totalrefund(String userid);
}

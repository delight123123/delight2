package com.fp.delight.admin.model;

import com.fp.delight.member.model.MemberVO;

public interface AdminLoginService {
	int adminLoginchk(String userid, String pwd);
	MemberVO selectAdmin(String userid);
}

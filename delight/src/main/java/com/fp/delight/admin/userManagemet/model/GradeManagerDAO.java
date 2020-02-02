package com.fp.delight.admin.userManagemet.model;

import java.util.List;

import com.fp.delight.mypage.model.GradeVO;

public interface GradeManagerDAO {
	List<GradeVO> gradeList();
	GradeVO gradeBySeqSel(int gradeSeq);
	int gradeEdit(GradeVO gradeVo);
	List<GradeVO> gradeListforPayment();
	
}

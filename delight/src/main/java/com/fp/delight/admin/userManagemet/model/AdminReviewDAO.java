package com.fp.delight.admin.userManagemet.model;

import java.util.List;
import java.util.Map;

import com.fp.delight.common.SearchVO;

public interface AdminReviewDAO {
	List<Map<String, Object>> adminreviewList(SearchVO searchVo);
	int reviewListTotal(SearchVO searchVo);
	Map<String, Object> adminReviewDetail(int reviewseq);
	int adminReviewDel(int reviewseq);
}

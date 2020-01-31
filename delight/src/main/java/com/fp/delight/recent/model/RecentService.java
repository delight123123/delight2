package com.fp.delight.recent.model;

import java.util.List;

public interface RecentService {
	int insertRecent(RecentVO recentVo);
	List<RecentVO> selectRecentNew5List(String userid);
	List<RecentVO> selectRecentList(RecentVO recentVo);
	int selectTotalRecord(String iporid);
	int selectChkRecent(RecentVO recentVo);
}

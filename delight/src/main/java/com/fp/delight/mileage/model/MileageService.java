package com.fp.delight.mileage.model;

import java.util.List;
import java.util.Map;

public interface MileageService {
	List<Map<String, Object>> earnMileage(MileageVO mileageVo);
}

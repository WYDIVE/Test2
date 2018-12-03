package com.test.service;

import java.util.List;

import com.test.pojo.WorkLog;

public interface WorkLogService {
	public List<WorkLog> worklist(int uid);
}

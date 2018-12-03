package com.test.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.mapper.WorkLogMapper;
import com.test.pojo.WorkLog;
import com.test.service.WorkLogService;

@Service
public class WorkLogServiceImpl implements WorkLogService {

	@Autowired
	private WorkLogMapper worklogmapper;
	
	@Override
	public List<WorkLog> worklist(int uid) {
		// TODO Auto-generated method stub
		return worklogmapper.worklist(uid);
	}

}

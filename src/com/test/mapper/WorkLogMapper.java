package com.test.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.test.pojo.WorkLog;

public interface WorkLogMapper {

	public List<WorkLog> worklist(@Param("uid") int uid);
}

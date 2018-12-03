package com.test.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.test.pojo.Sms;

public interface SmsMapper {

	
	public List<Sms> smslist(@Param("uid") int uid);
	public List<Sms> msgAll();
	public void smsave(Sms sms);
}

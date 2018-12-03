package com.test.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.test.pojo.Sms;

public interface SmsService {
	public List<Sms> smslist(int uid);
	public void smsave(Sms sms);
	public List<Sms> msgAll();
}

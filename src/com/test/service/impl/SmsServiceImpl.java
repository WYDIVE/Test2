package com.test.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.test.mapper.SmsMapper;
import com.test.pojo.Sms;
import com.test.service.SmsService;

@Service
public class SmsServiceImpl implements SmsService {

	@Resource
	private SmsMapper smsMapper;
	
	@Override
	public List<Sms> smslist(int uid) {
		// TODO Auto-generated method stub
		return smsMapper.smslist(uid);
	}

	@Override
	public void smsave(Sms sms) {
		// TODO Auto-generated method stub
		smsMapper.smsave(sms);
	}

	@Override
	public List<Sms> msgAll() {
		// TODO Auto-generated method stub
		return smsMapper.msgAll();
	}

}

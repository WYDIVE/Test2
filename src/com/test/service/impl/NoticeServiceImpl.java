package com.test.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.mapper.NoticeMapper;
import com.test.pojo.Notice;
import com.test.service.NoticeService;

@Service
@SuppressWarnings("all")
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	private NoticeMapper noticeMapper;

	@Override
	public Notice noticelist() {
		// TODO Auto-generated method stub
		return noticeMapper.noticelist();
	}

}

package com.test.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.test.mapper.UserMapper;
import com.test.pojo.User;
import com.test.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Resource
	private UserMapper userMapper;

	@Override
	public User login(String name,String password) {
		// TODO Auto-generated method stub
		return userMapper.login(name, password);		
	}

	@Override
	public List<User> list() {
		// TODO Auto-generated method stub
		return userMapper.list();
	}

	@Override
	public void up(User user) {
		// TODO Auto-generated method stub
		userMapper.up(user);
	}

	@Override
	public User getOne(Integer id) {
		// TODO Auto-generated method stub
		return userMapper.getOne(id);
	}

	@Override
	public void deleteone(Integer id) {
		// TODO Auto-generated method stub
		userMapper.deleteone(id);
	}

	@Override
	public String getName(String name) {
		// TODO Auto-generated method stub
		return userMapper.getName(name);
	}
	
}

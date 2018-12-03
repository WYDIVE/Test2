package com.test.service;

import java.util.List;

import com.test.pojo.User;

public interface UserService {
	public List<User> list();
	
	public User getOne(Integer id);
	
	public String getName(String name);
	
	public User login(String name,String password);
	
	public void up(User user);
	
    public void deleteone(Integer id);
}

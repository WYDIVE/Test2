package com.test.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.test.pojo.User;

public interface UserMapper {
    
	public List<User> list();
	public User getOne(Integer id);
	public String getName(String name);
	
	public User login(@Param("name") String name,@Param("password") String password);
	public void up(User user);
	
	public void deleteone(Integer id);
}

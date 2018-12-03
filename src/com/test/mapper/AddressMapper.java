package com.test.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.test.pojo.Address;

public interface AddressMapper {
 
	public List<Address> adrlist(@Param("uid") int uid);
}

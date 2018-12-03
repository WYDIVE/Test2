package com.test.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.test.mapper.AddressMapper;
import com.test.pojo.Address;
import com.test.service.AddressService;

@Service
public class AddressServiceImpl implements AddressService {

	@Resource
	private AddressMapper addressMapper;
	@Override
	public List<Address> adrlist(int uid) {
		// TODO Auto-generated method stub
		return addressMapper.adrlist(uid);
	}

}

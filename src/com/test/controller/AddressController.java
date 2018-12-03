package com.test.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.test.pojo.Address;
import com.test.service.AddressService;

@Controller
@RequestMapping("")
public class AddressController {

	@Resource
	private AddressService addressService;
	@RequestMapping("admin_user_address")
	public String addresslist(Integer uid,Model model) {
		List<Address> adrlist=addressService.adrlist(uid);
		model.addAttribute("adrlist", adrlist);
		return "./include/addresslist";
		
	}
}

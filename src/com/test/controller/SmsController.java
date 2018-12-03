package com.test.controller;

import java.util.HashMap; 
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.test.pojo.Page;
import com.test.pojo.Sms;
import com.test.pojo.User;
import com.test.service.SmsService;
import com.test.service.UserService;

@Controller
@RequestMapping("")
public class SmsController {

	@Resource
	private SmsService smsService;
	@Resource
	private UserService userService;
	
	@RequestMapping("admin_user_mssagelist")
	public String msssagelist(Integer uid,Model model,HttpSession session) {
		List<User> userlist=userService.list();
		List<Sms> smslist=smsService.smslist(uid);
		Map<String,String> mapt = new HashMap<String,String>();
		for(User uu: userlist) {
			mapt.put(uu.getId() +"", uu.getName());
		}
		model.addAttribute("mapt", mapt);
		model.addAttribute("smslist", smslist);
		session.setAttribute("ID", uid);
		return "./include/mssage";
		
	}
	@RequestMapping("admin_user_smsave")
	public String mssageSend(Sms sms) {
		smsService.smsave(sms);
		return "home";		
	}
	
	@RequestMapping("admin_user_msgAll")
	public String msgall(Model model,Page page) {
		PageHelper.offsetPage(page.getStart(), page.getCount());
	    List<Sms> smslist=smsService.msgAll();
	    int total=(int) new PageInfo<>(smslist).getTotal();
	    page.setTotal(total);		
		model.addAttribute("page", page);
	    model.addAttribute("smslist", smslist);
		return "/include/admin/smsList";
		
	}
	
}

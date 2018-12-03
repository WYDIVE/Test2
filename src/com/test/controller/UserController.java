package com.test.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.util.List;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.test.pojo.Notice;
import com.test.pojo.Page;
import com.test.pojo.User;
import com.test.pojo.WorkLog;
import com.test.service.NoticeService;
import com.test.service.UserService;
import com.test.service.WorkLogService;
import com.test.util.ImageUtil;
import com.test.util.UploadedImgFile;

@Controller
@RequestMapping("")
public class UserController {

	@Resource
	private UserService userService;
	@Resource
	private NoticeService noticeService;
	@Autowired
	private WorkLogService worklogservice;
	
	@SuppressWarnings("unused")
	@RequestMapping("admin_user_login")
	public String login(String name,String password,Model model,HttpSession session)throws Exception {
		User user=userService.login(name, password);
		if(user==null) {
			model.addAttribute("msg", "账号或者密码错误");
			return "index";
		}else if(user.getIsAdmin()== 1){
			Notice noticelist=noticeService.noticelist();
			Integer uid=user.getId();
	        List<WorkLog> workList=worklogservice.worklist(uid);
			model.addAttribute("noticelist", noticelist);
			session.setAttribute("list", user.getName());
			model.addAttribute("list", user.getName());
			return "backhome";
			}else {
				Notice noticelist=noticeService.noticelist();
				Integer uid=user.getId();
		        List<WorkLog> workList=worklogservice.worklist(uid);
				session.setAttribute("list", user.getName());
				model.addAttribute("list", user.getName());
				session.setAttribute("ID", user.getId());
				model.addAttribute("noticelist", noticelist);
				model.addAttribute("workList", workList);
				return "home";
			}		
		
	}
	@RequestMapping("admin_user_loginout")
	public String loginout(HttpSession session) throws Exception{
		//清除Session
		session.invalidate();
		
		return "index";
		}
	
	
	@RequestMapping("amdmin_user_userlist")
	public String userlist(Model model,Page page) {
		PageHelper.offsetPage(page.getStart(), page.getCount());
		List<User> ult=userService.list();
		int total=(int) new PageInfo<>(ult).getTotal();
		page.setTotal(total);		
		model.addAttribute("page", page);
		model.addAttribute("ult", ult);
		return "/include/admin/userList";
		
	}
	@ResponseBody
	@RequestMapping("admin_user_image")
	public String checkname(Integer id,Model model,UploadedImgFile uploadedImageFile,HttpSession session)throws Exception {
		 File  imageFolder= new File(session.getServletContext().getRealPath("img/category"));
		    File file = new File(imageFolder,id+".jpg");
		    if(!file.getParentFile().exists())
		        file.getParentFile().mkdirs();
		    uploadedImageFile.getImage().transferTo(file);
		    BufferedImage img = ImageUtil.change2jpg(file);
		    ImageIO.write(img, "jpg", file);
			return null;		
	}
	@RequestMapping("admin_user_up")
	public String up(Integer id,Model model) {
		User usero=userService.getOne(id);
		model.addAttribute("usero", usero);
		return "/include/admin/useredit";
	}
	@RequestMapping("admin_user_update")
	public String update(User user) {
		userService.up(user);
		return "redirect:/amdmin_user_userlist.do";
	}
	@RequestMapping("admin_user_deleteone")
	public String deleteone(Integer id) {
		userService.deleteone(id);
		return "redirect:/amdmin_user_userlist.do";
	}
	

}

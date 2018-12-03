package com.test.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception exc)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("zhixing");
		 String url = request.getRequestURI();
	        if (url.indexOf("admin_user_login.do") >= 0) {
	            // 如果是登陆公开地址，则放行
	        	System.out.println("ha1");
	            return true;
	        }
		HttpSession session=request.getSession();
	System.out.println(session.getAttribute("list"));
		if (session.getAttribute("list") != null) {
            // 判断用户名在session中是否存在，存在则放行
			System.out.println("zhizhi");
            return true;
        }else {
         System.out.println("haha2");
        request.getRequestDispatcher("index.jsp").forward(request, response);
        // 否则拦截
        return false;}
	}

	}


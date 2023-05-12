package com.spring.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class SessionInterceptor implements HandlerInterceptor {
	
	@Override
	public boolean preHandle(HttpServletRequest request, 
							HttpServletResponse response, 
							Object handler) throws Exception {
		
		log.info("preHandle");
		
		// session 유무 검증
		HttpSession session = request.getSession(false);
		
		if(session == null || session.getAttribute("userId") == null) {
			
			response.sendRedirect("/main");
			return false;
		}
		
		return true;
	}
}

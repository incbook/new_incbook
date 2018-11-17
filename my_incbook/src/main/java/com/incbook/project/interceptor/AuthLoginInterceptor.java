package com.incbook.project.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthLoginInterceptor extends HandlerInterceptorAdapter{

	/* (non-Javadoc)
	 * 로그인 했는지 확인한다.
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		RequestDispatcher rd = request.getRequestDispatcher("/member/signInForm");
		
		// 로그인을 안했으면 로그인페이지로 강제이동
		if (session.getAttribute("login") == null) {
			request.setAttribute("loginAuth", "fail");
			rd.forward(request, response);
			return false;
		}
		
		return true;
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

	}

}

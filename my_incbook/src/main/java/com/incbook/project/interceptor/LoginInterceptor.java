package com.incbook.project.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter {
	private static final String LOGIN = "login";
	
	/* (non-Javadoc)
	 * 컨트롤러 맨 앞에
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		
		// 기존 세션정보 삭제
		if (session.getAttribute(LOGIN) != null) {
			session.removeAttribute(LOGIN);
		}
		return true;
	}
	
	/* (non-Javadoc)
	 * 컨트롤러 끝에 실행함
	 */
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		HttpSession session = request.getSession();
		ModelMap modelMap = modelAndView.getModelMap();
		Object member = modelMap.get("member");
		
		// 세션에 담을 정보 (member정보)가 있을 때 세션 생성
		if (member != null) {
			session.setAttribute(LOGIN, member);
			System.out.println(session.getAttribute(LOGIN));
//			response.sendRedirect("/"); // 홈으로
			Object dest = session.getAttribute("dest");
			response.sendRedirect(dest != null ? (String)dest : "/"); // 이전페이지, 없으면 홈
		}
		
	}
}

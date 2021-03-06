package com.incbook.project.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class PrePageInterceptor extends HandlerInterceptorAdapter {
	
	private boolean uriCheck(String uri) {
		boolean result = true;
		String[] uriArrs = {"/member/signInForm", "/member/signOut", "/book/quickView", "/own/searchBook", "/member/loginIdDoubleCheck", "/book/quickViewPersonal"
							,"/book/chartCategories", "/member/passwordFind", "/member/signUp", "/bookclub/bookclubSide"};
		for(String uriArr : uriArrs) {
			if (uriArr.equals(uri)) {
				result = false;
				break;
			}
		}
		return result;
	}
	
	private void saveDest(HttpServletRequest req) {
		String uri = req.getRequestURI();
		
		String query = req.getQueryString();
		
		if (uriCheck(uri)) {
			if (query == null || "null".equals(query)) {
				query = "";
			} else {
				query = "?" + query;
			}
			
			if (req.getMethod().equals("GET")) {
				req.getSession().setAttribute("dest", uri + query);
			}
		}
		
	}
	/* (non-Javadoc)
	 * 컨트롤러 맨 앞에
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		saveDest(request);
		return true;
	}
	
	/* (non-Javadoc)
	 * 컨트롤러 끝에 실행함
	 */
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
	}
}

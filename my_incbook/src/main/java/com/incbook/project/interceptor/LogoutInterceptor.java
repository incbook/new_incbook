package com.incbook.project.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.FlashMap;
import org.springframework.web.servlet.FlashMapManager;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.servlet.support.RequestContextUtils;

public class LogoutInterceptor extends HandlerInterceptorAdapter {
	private static final String LOGIN = "login";

	/* (non-Javadoc)
	 * 컨트롤러 맨 앞에
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();

		// 기존 세션정보 삭제
		session.removeAttribute(LOGIN);
		return true;
	}

	/* (non-Javadoc)
	 * 컨트롤러 끝에 실행함
	 */
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		HttpSession session = request.getSession();

		/* 
		 * 잘은 모르겠지만 인터셉터에서는 Override를 통해 매개변수가 정해져있어서
		 * RedirectAttributes을 만들 수 없기 때문에
		 * redirect시 1회성 값을 전달 할 수가 없었는데
		 * FlashMap을 이용해 가능케 함
		*/
		FlashMap flashMap = new FlashMap();
		flashMap.put("logoutTry", "success");
		FlashMapManager flashMapManager = RequestContextUtils.getFlashMapManager(request);
		flashMapManager.saveOutputFlashMap(flashMap, request, response);
		
		Object dest = session.getAttribute("dest");
		response.sendRedirect(dest != null ? (String)dest : "/"); // 이전페이지, 없으면 홈

	}
}

package inae.controller;

import inae.board.service.BoardService;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(EmController.class);

	@Autowired
	BoardService boardService; 

	@RequestMapping("/inae/login.do")
    public ModelAndView login(@RequestParam Map<String, Object> paramMap, ModelMap model) throws Exception {
		
		ModelAndView mv = new ModelAndView("test/login");
		
		return mv;
	}
	
	@RequestMapping("/inae/doLogin.do")
    public ModelAndView doLogin(@RequestParam Map<String, Object> paramMap, ModelMap model,HttpServletRequest request) throws Exception {
		
		ModelAndView mv = new ModelAndView("test/login");
		
		String id = request.getParameter("inputId");
		String password = request.getParameter("inputPassword");
		
		logger.debug("id : " + id);
		logger.debug("password : " + password);
		
		Map<String, String> parameterMap = new HashMap<String, String>();
		
		parameterMap.put("id", id);
		parameterMap.put("password", password);
		
		Map<String, String> resultMap = boardService.selectMemberInfo(parameterMap);
		
		if(null != resultMap && !resultMap.isEmpty()){
			logger.debug("조회 아이디 : " + resultMap.get("ID"));
			String userId = resultMap.get("ID");
			String userPwd = resultMap.get("PASSWORD");
			String userName = resultMap.get("NAME");
			String userEmail = resultMap.get("EMAIL");
			
			HttpSession session = request.getSession(false);
			session.setAttribute("userId", userId);
			session.setAttribute("userPwd", userPwd);
			session.setAttribute("userName", userName);
			session.setAttribute("userEmail", userEmail);
			
		}
		
		return mv;
	}

	@RequestMapping("/inae/logout.do")
    public ModelAndView logout(@RequestParam Map<String, Object> paramMap, ModelMap model, HttpServletRequest request) throws Exception {
		
		ModelAndView mv = new ModelAndView("test/services");
		HttpSession session = request.getSession(false);
		session.invalidate();
		
		return mv;
	}
	
	
	
}

package inae.controller;

import inae.board.service.BoardService;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class JoinController {
	
	private static final Logger logger = LoggerFactory.getLogger(EmController.class);

	@Autowired
	BoardService boardService; 

	@RequestMapping("/inae/join.do")
    public ModelAndView join(@RequestParam Map<String, Object> paramMap, ModelMap model) throws Exception {
		
		ModelAndView mv = new ModelAndView("test/join");
		
		return mv;
	}
	
	@RequestMapping("/inae/doJoin.do")
    public ModelAndView doJoin(@RequestParam Map<String, Object> paramMap, ModelMap model, HttpServletRequest request) throws Exception {
		
		ModelAndView mv = new ModelAndView("test/join");
		
		String id = request.getParameter("inputId");
		String password = request.getParameter("inputPassword");
		String name = request.getParameter("inputName");
		String email = request.getParameter("inputEmail");
		
		Map<String, String> parameterMap = new HashMap<String, String>();
		
		parameterMap.put("id", id);
		parameterMap.put("password", password);
		parameterMap.put("name", name);
		parameterMap.put("email", email);
		
		boardService.insertMemberInfo(parameterMap);
		
		mv.addObject("success", "success");
		
		return mv;
	}
	
	
}

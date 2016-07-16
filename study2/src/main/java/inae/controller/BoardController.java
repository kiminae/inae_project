package inae.controller;

import inae.board.dao.BoardVO;
import inae.board.service.BoardService;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(EmController.class);
	
	@Autowired
	BoardService boardService; 
	
	@RequestMapping("/inae/getBoard.do")
    public ModelAndView getBoard(@RequestParam Map<String, Object> paramMap, ModelMap model) throws Exception {
        
		logger.debug("get Board!");
		
		ModelAndView mv = new ModelAndView("test/portfolio");
        
		List<BoardVO> resultList = boardService.selectBoardList();
		
		for (BoardVO boardVO : resultList) {
			logger.debug("result!!");
			logger.debug(boardVO.getTitle());
			logger.debug("result!!");
		}
        return mv.addObject("resultList", resultList); 

    }
	
	
	@RequestMapping("/inae/write.do")
    public ModelAndView write(@RequestParam Map<String, Object> paramMap, ModelMap model, HttpServletRequest request) throws Exception {
        
		ModelAndView mv = new ModelAndView("test/write");
        return mv; 

    }
	
	@RequestMapping("/inae/doWrite.do")
    public ModelAndView doWrite(@RequestParam Map<String, Object> paramMap, ModelMap model, HttpServletRequest request) throws Exception {
        
		ModelAndView mv = new ModelAndView("test/write");
		
		String title = request.getParameter("inputTitle");
		String contents = request.getParameter("textContents");
		
		logger.debug("title : " + title);
		logger.debug("contents : " + contents);
		
		HttpSession session = request.getSession(false);
		
		String id = (String) session.getAttribute("userId");
		String name = (String) session.getAttribute("userName"); 
		String day = getCurrentTimeStamp();
		
		Map<String, String> parameterMap = new HashMap<String, String>();
		parameterMap.put("title", title);
		parameterMap.put("contents", contents);
		parameterMap.put("id", id);
		parameterMap.put("name", name);
		parameterMap.put("day", day);
		
		boardService.insertBoardInfo(parameterMap);
		
		mv.addObject("success", "success");
		
        return mv; 

    }
	
	@RequestMapping("/inae/boardDetail.do")
    public ModelAndView boardDetail(@RequestParam Map<String, Object> paramMap, ModelMap model, HttpServletRequest request) throws Exception {
        
		ModelAndView mv = new ModelAndView("test/detail");
		String no = request.getParameter("no");
		logger.debug("no : " + no);
		Map<String, String> parameterMap = new HashMap<String, String>();
		parameterMap.put("no", no);
		Map<String, String> BoardInfoMap = boardService.selectBoardInfo(parameterMap);
		
		mv.addObject("title", BoardInfoMap.get("TITLE"));
		mv.addObject("contents", BoardInfoMap.get("CONTENTS"));
		mv.addObject("no", no);
		
        return mv; 

    }
	
	@RequestMapping("/inae/modify.do")
    public ModelAndView modify(@RequestParam Map<String, Object> paramMap, ModelMap model, HttpServletRequest request) throws Exception {
		
		ModelAndView mv = new ModelAndView("test/detail");
		String no = request.getParameter("inputNo");
		String title = request.getParameter("inputTitle");
		String contents = request.getParameter("textContents");

		logger.debug("no : " + no);
		logger.debug("title : " + title);
		logger.debug("contents : " + contents);
		
		Map<String, String> parameterMap = new HashMap<String, String>();
		parameterMap.put("no", no);
		parameterMap.put("title", title);
		parameterMap.put("contents", contents);
		
		boardService.updateBoardInfo(parameterMap);
		
		mv.addObject("title", title);
		mv.addObject("contents", contents);
		mv.addObject("no", no);
		
		mv.addObject("success", "success");
		
		return mv;
	
	}
	
	@RequestMapping("/inae/delete.do")
    public ModelAndView delete(@RequestParam Map<String, Object> paramMap, ModelMap model, HttpServletRequest request) throws Exception {
		
		ModelAndView mv = new ModelAndView("redirect:/inae/getBoard.do");
		String no = request.getParameter("inputNo");

		logger.debug("no : " + no);
		
		Map<String, String> parameterMap = new HashMap<String, String>();
		parameterMap.put("no", no);
		
		boardService.deleteBoardInfo(parameterMap);
		
		return mv;
	
	}
	
	public static String getCurrentTimeStamp() {
	    SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//dd/MM/yyyy
	    Date now = new Date();
	    String strDate = sdfDate.format(now);
	    return strDate;
	}
	
	

}

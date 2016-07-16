package inae.controller;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class EmController {
	
	private static final Logger logger = LoggerFactory.getLogger(EmController.class);
	
	
	@RequestMapping("/inae/emRegister.do")
    public String main(@RequestParam Map<String, Object> paramMap, ModelMap model) throws Exception {
        
		
        model.addAttribute("message", "Hello~~" );
        
        return "test/ex_1";  
    }
	
	@RequestMapping("/inae/goPage.do")
    public String goPage(@RequestParam Map<String, Object> paramMap, ModelMap model) throws Exception {
        
		String url = "test/";
		
		String type = (String)paramMap.get("type");
		logger.debug("________________"+type+"_____________________");
		
        return url+type;  
    }

}

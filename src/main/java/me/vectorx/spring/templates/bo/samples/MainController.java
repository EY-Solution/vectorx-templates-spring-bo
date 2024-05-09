package me.vectorx.spring.templates.bo.samples;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	
	@GetMapping("/login")
	public ModelAndView login() {
		
		final Map<String, Object> data = new HashMap<>();
		data.put("a", "value1");
		data.put("b", "value2");
		
		return new ModelAndView("index", data);
	}
	
}

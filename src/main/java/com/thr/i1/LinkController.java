package com.thr.i1;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/shop-grid") 
public class LinkController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String pageLink1 () {
		return "shop-grid";
	}

}

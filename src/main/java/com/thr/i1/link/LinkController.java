package com.thr.i1.link;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/link")
public class LinkController {
	
	//공지사항
	@RequestMapping(value = "/notices", method = RequestMethod.GET)
	public ModelAndView notices () throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("link/notices");
		
		return mv;
	}
	
	//리뷰
	@RequestMapping(value = "reviews", method = RequestMethod.GET)
	public ModelAndView reviews() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("link/reviews");
		
		return mv;
	}
	
	//center
	@RequestMapping(value = "/center", method = RequestMethod.GET)
	public ModelAndView center () throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("link/center");
		
		return mv;
	}
	
}

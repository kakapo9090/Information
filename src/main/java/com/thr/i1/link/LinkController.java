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
		mv.setViewName("notice/noticeList");
		return mv;
	}
	
	//리뷰
	@RequestMapping(value = "eventx", method = RequestMethod.GET)
	public ModelAndView eventx () throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("link/eventx");
		
		return mv;
	}
	
	//center
	@RequestMapping(value = "/center", method = RequestMethod.GET)
	public ModelAndView center () throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("link/center");
		
		return mv;
	}
	
	//List - instant
	@RequestMapping(value = "/instant", method = RequestMethod.GET)
	public ModelAndView instant () throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("link/instant");
		
		return mv;
	}
	
	//List - drink
	@RequestMapping(value = "/drink", method = RequestMethod.GET)
	public ModelAndView drink () throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("link/drink");
			
		return mv;
	}
	
	//List - fresh
	@RequestMapping(value = "/fresh", method = RequestMethod.GET)
	public ModelAndView fresh () throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("link/fresh");
		
		return mv;
	}
	
	//List - snack
	@RequestMapping(value = "/snack", method = RequestMethod.GET)
	public ModelAndView snack () throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("link/snack");
			
		return mv;
	}
	
}
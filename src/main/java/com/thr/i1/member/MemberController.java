package com.thr.i1.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	//회원 생성
	@GetMapping("setNew")
	public ModelAndView setNew () throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("link/exm");
		return mv;
	}
	
	//로그인
	@GetMapping("getLogin")
	public ModelAndView getLogin () throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("link/login");
		return mv;
	}
	
	//로그아웃
	@GetMapping("logout")
	public ModelAndView logout () throws Exception {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:../");
		return mv;
	}
	
}

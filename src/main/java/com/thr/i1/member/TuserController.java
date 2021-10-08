package com.thr.i1.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/link/*")
public class TuserController {
	
	@Autowired
	private TuserService tuserService;
	
	//로그인 화면
	@GetMapping("login")
	public ModelAndView  login () throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("link/login");
		return mv;
	}
	
	//로그인 처리
	@PostMapping("login")
	public ModelAndView login (TuserDTO tuserDTO, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		tuserDTO = tuserService.login(tuserDTO);
		if (tuserDTO != null) {
			session.setAttribute("tuser", tuserDTO);
		} else {
		}
		mv.setViewName("redirect:../");
		return mv;
	}
	
	//로그아웃
	@RequestMapping("logout")
	public ModelAndView logout (HttpSession session) {
		ModelAndView mv = new ModelAndView();
		tuserService.logout(session);
		mv.setViewName("link/index");
		mv.addObject("msg", "로그아웃");
		return mv;
		
	}
	
	
	
	
	
	//회원 생성
	@GetMapping("setNew")
	public ModelAndView setNew () throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("link/exm");
		return mv;
	}
	
	@PostMapping("setNew")
	public ModelAndView setNew (TuserDTO tuserDTO) throws Exception{

		ModelAndView mv = new ModelAndView();
		int result = tuserService.setNew(tuserDTO);
		
		String message = "회원가입 실패";
		if(result>0) {
			message = "회원 가입 성공";
		}
		
		mv.addObject("msg", message);
		mv.addObject("url", "../");
		mv.setViewName("common/result");
		
		
		return mv;
	}
	
	//ID 중복 확인
	@GetMapping("idCheck")
	public ModelAndView idCheck(TuserDTO tuserDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		tuserDTO = tuserService.idCheck(tuserDTO);
		mv.addObject("dto", tuserDTO);
		mv.setViewName("link/idCheck");
		
		return mv;
		
	}
	
	//마이페이지
	@GetMapping("mypage")
	public ModelAndView mypage () throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("link/mypage");
		return mv;
	}
	
}

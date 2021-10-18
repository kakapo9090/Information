package com.thr.i1.member;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
	@PostMapping("loginPost")
//	public String login (@RequestParam("id") String id, @RequestParam("pw") String pw, HttpSession session) throws Exception {
	public @ResponseBody String login (HttpSession session, @RequestBody String paramData) throws Exception {
		JSONParser parser = new JSONParser();
		String result = "0";
		//SONArray insertParam = (JSONArray) parser.parse(paramData);
		Object obj = parser.parse( paramData );
		JSONObject jsonObj = (JSONObject) obj;
		String id = (String) jsonObj.get("ID");
		String pw = (String) jsonObj.get("PW");
		
		TuserDTO tuserDTO = new TuserDTO();
		ModelAndView mv = new ModelAndView();
		
		tuserDTO.setId(id);
		tuserDTO.setPw(pw);
		tuserDTO = tuserService.login(tuserDTO);
		
		if (tuserDTO != null) {
			// 로그인 성공!
			session.setAttribute("tuser", id);
			result = "1";
			//mv.setViewName("redirect:../");
		} else {
			// 로그인 실패 ㅠ
			result = "0";
		}
		//mv.setViewName("redirect:../");
		return result;
	}
	
	//회원 생성
	@GetMapping("exm")
	public ModelAndView setNew () throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("link/exm");
		return mv;
	}
	
	@PostMapping("setNew")
	public @ResponseBody String setNew (HttpSession session,@RequestBody String paramData) throws Exception {
		String result = "0";
		int sqlresult = 0;
		TuserDTO tuserDTO = new TuserDTO();
		
		JSONParser parser = new JSONParser();
		//SONArray insertParam = (JSONArray) parser.parse(paramData);
		Object obj = parser.parse( paramData );
		JSONObject jsonObj = (JSONObject) obj;
		String id = (String) jsonObj.get("ID");
		String pw = (String) jsonObj.get("PW");
		String name = (String) jsonObj.get("NAME");
		String email = (String) jsonObj.get("EMAIL");
		String phone = (String) jsonObj.get("PHONE");
		String address = (String) jsonObj.get("ADDRESS");
		
		tuserDTO.setId(id);
		tuserDTO.setPw(pw);
		tuserDTO.setName(name);
		tuserDTO.setEmail(email);
		tuserDTO.setPhone(phone);
		tuserDTO.setAddress(address);
		sqlresult = tuserService.setNew(tuserDTO);
		
		if(sqlresult != 0) {
			System.out.println("회원가입 성공");
			result = "1";
		} else {
			System.out.println("회원가입 실패");
			result = "0";
		}
		
		/* mv.setViewName("redirect:../link/login"); */
		
		return result;
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
	//중목체크
	@PostMapping("idCheck")
	public @ResponseBody String icCheck (@RequestBody String paramData) throws Exception{
		String result = "0";
		JSONParser parser = new JSONParser();
		//SONArray insertParam = (JSONArray) parser.parse(paramData);
		Object obj = parser.parse( paramData );
		JSONObject jsonObj = (JSONObject) obj;		
		String id = (String) jsonObj.get("ID");
		
		TuserDTO tuserDTO = new TuserDTO();
		
		tuserDTO.setId(id);
		tuserDTO = tuserService.idCheck(tuserDTO);
		
		if (tuserDTO != null) {
			// 중복됨
			result = "1";
		} else {
			// 중복안됨
			result = "0";
		}		
		
		return result;
	}
	
	//마이페이지
	@GetMapping("mypage")
	public ModelAndView mypage () throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("link/mypage");
		return mv;
	}
	
	//로그아웃
	@GetMapping("logout")
	public ModelAndView logout (HttpSession session)throws Exception{
		session.invalidate();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:../");
		return mv;
	}
	
	//관리자-회원 목록
	@RequestMapping("userList")
	public String userList (Model model) {
		List<TuserDTO> list = tuserService.userList();
		model.addAttribute("list", list);
		return "link/userList";
	}
		
	//관리자-회원 상세조회
	@RequestMapping("userView")
	public String userView (String id, Model model) {
		model.addAttribute("dto", tuserService.userView(id));
		return "link/userView";
	}
	
}

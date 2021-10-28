package com.thr.i1.member;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.mybatis.logging.LoggerFactory;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/link/**")
public class TuserController {
	
	@Autowired
	private TuserService tuserService;
	private HttpSession session;
	private static final Logger logger = org.slf4j.LoggerFactory.getLogger(TuserController.class);
	
	//로그인 화면
	@GetMapping("login")
	public ModelAndView  login () throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("link/login");
		return mv;
	}
	
	//로그인 처리
	@PostMapping("loginPost")
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
			session.setAttribute("tuser", tuserDTO);
			
			session.setAttribute("tuser_Id", tuserDTO.getId());
			session.setAttribute("tuser_Num", tuserDTO.getNum());
			session.setAttribute("tuser_Name", tuserDTO.getName());
			session.setAttribute("tuser_Email", tuserDTO.getEmail());
			session.setAttribute("tuser_Phone", tuserDTO.getPhone());
			session.setAttribute("tuser_Address", tuserDTO.getAddress());
			System.out.println("num확인용 : "+tuserDTO.getNum());
			System.out.println("name확인용 : "+tuserDTO.getName());
			System.out.println("email확인용 : "+tuserDTO.getEmail());
			System.out.println("phone확인용 : "+tuserDTO.getPhone());
			System.out.println("address확인용 : "+tuserDTO.getAddress());
			
			System.out.println("Master: " + tuserDTO.getMaster());
			if(tuserDTO.getMaster() == 0) {
				result = "2"; // 관리자 여부
			}
			else {
				result = "1"; // 일반 유저
			}
			
			//mv.setViewName("redirect:../");
		} else {
			// 로그인 실패 ㅠ
			result = "0";
		}
		
		System.out.println("Result:" + result);
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
	public String userList (Model model, HttpSession session) {
		TuserDTO tuserDTO = (TuserDTO) session.getAttribute("tuser");
		List<TuserDTO> list = tuserService.userList();
		model.addAttribute("list", list);
		return "link/userList";
	}
		
	//관리자-회원 상세조회
	@RequestMapping("userView")
	public String userView (@RequestParam String id, Model model) {
		model.addAttribute("dto", tuserService.userView(id));
		logger.info("클릭한 아이디 : "+id);
		return "link/userView";
	}
	
	//관리자-회원 정보 수정
	@GetMapping("userEdit")
	public ModelAndView userEdit (String id) throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.addObject("dto", tuserService.userView(id));
		mv.setViewName("link/userEdit");
		return mv;
	}
	
	@PostMapping("userEdit")
	public ModelAndView userEdit (TuserDTO tuserDTO, HttpSession session) throws Exception {
		TuserDTO sessionDTO = (TuserDTO) session.getAttribute("dto");
		tuserDTO.setId(sessionDTO.getId());
		int result = tuserService.userEdit(tuserDTO);
		tuserDTO.setName(sessionDTO.getName());
		session.setAttribute("dto", tuserDTO);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:../link/userList");
		return mv;
	}
	
	//관리자-회원 정보 삭제
	@GetMapping("userDelete")
	public ModelAndView userDelete (HttpSession session) {
		TuserDTO tuserDTO = (TuserDTO) session.getAttribute("dto");
		int result = tuserService.userDelete(tuserDTO);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:../link/userList");
		return mv;
	}
	
	//관리자-로그아웃
	@GetMapping("userLogout")
	public ModelAndView userLogout (HttpSession session)throws Exception{
		session.invalidate();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:../");
		return mv;
	}
	
	//마이페이지
	@RequestMapping("mypage")
	public String mypage (Model model, HttpSession session) throws Exception {
		TuserDTO tuserDTO = (TuserDTO)session.getAttribute("tuser");
		tuserDTO = tuserService.mypage(tuserDTO.getId());
		model.addAttribute("user", tuserDTO);
		return "link/mypage";
	}
	
	//마이페이지-회원 탈퇴
	@GetMapping("mypageDelete")
	public ModelAndView mypageDelete (HttpSession session) {
		TuserDTO tuserDTO = (TuserDTO) session.getAttribute("dto");
		int result = tuserService.userDelete(tuserDTO);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/link/mypage");
		return mv;
	}
}

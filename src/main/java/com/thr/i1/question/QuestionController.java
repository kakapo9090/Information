package com.thr.i1.question;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.thr.i1.util.Pager;


@RequestMapping("/question/**")
@Controller
public class QuestionController {
	
	@Autowired
	private QuestionService questionService;
	
	@GetMapping("FAQ")
	public ModelAndView getList(Pager pager) throws Exception{
		ModelAndView mv = new ModelAndView();
		List<QuestionDTO> question= questionService.getList(pager);
		System.out.println("serach:"+pager.getSearch());
		System.out.println(question.size());
		mv.addObject("question", question);
		mv.addObject("pager", pager);
		mv.setViewName("question/FAQ");
		return mv;
	}

	@GetMapping("one_insert")
	public ModelAndView setOneInsert() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("question/one_insert");
		return mv;
	}
	
	@PostMapping("one_insert")
	public ModelAndView setOneInsert(One_on_oneDTO oneDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = questionService.setOneInsert(oneDTO);
		mv.setViewName("question/one_on_one");
		return mv;
	}
	
	@GetMapping("one_on_one")
	public ModelAndView getOneList() throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/question/one_on_one");
		return mv;
	}
	
	@PostMapping("one_on_one")
	public ModelAndView getOneList(One_on_oneDTO oneDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		List<One_on_oneDTO> one = questionService.getOneList(oneDTO);
		mv.addObject("one", one);
		mv.setViewName("/question/one_on_one?on_writer="+oneDTO.getOne_writer());
		return mv;
	}
	
	
}

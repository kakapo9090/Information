package com.thr.i1.question;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.thr.i1.util.NoticePager;




@RequestMapping("/question/**")
@Controller
public class QuestionController {
	
	@Autowired
	private QuestionService questionService;
	
	@GetMapping("FAQ")
	public ModelAndView getList(NoticePager pager) throws Exception{
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
		mv.setViewName("question/one_insert");
		return mv;
	}
	
//	@GetMapping("one_on_one")
//	public ModelAndView getOneList(One_on_oneDTO oneDTO) throws Exception{
//		ModelAndView mv = new ModelAndView();
//		List<One_on_oneDTO> one = questionService.getOneList(oneDTO);
//		mv.addObject("one", one);
//		mv.setViewName("/question/one_on_one");
//		return mv;
//	}
	
	@GetMapping("one_on_one")
	public ModelAndView getOneList() throws Exception{
		ModelAndView mv = new ModelAndView();
		List<One_on_oneDTO> one = questionService.getOneList();
		mv.addObject("one", one);
		mv.setViewName("/question/one_on_one");
		return mv;
	}
	
	@GetMapping("one_select")
	public ModelAndView getOneSelect(One_on_oneDTO oneDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		One_on_oneDTO one = questionService.getOneSelect(oneDTO);
		mv.addObject("oneDTO", one);
		mv.setViewName("/question/one_select2");
		return mv;
	}
	
	//1:1문의 내역 삭제하기
	@GetMapping("delete")
	public ModelAndView setOneDelete(One_on_oneDTO oneDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = questionService.setOneDelete(oneDTO);
	
		mv.setViewName("/result/ajaxResult");
		return mv;
	}
	//1:1문의 내역 수정하기
	@PostMapping("update")
	public ModelAndView setOneUpdate(One_on_oneDTO oneDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = questionService.setOneUpdate(oneDTO);
		mv.addObject("result", result);
		mv.setViewName("/result/ajaxResult");
		return mv;
	}
	//1:1문의 답변하기
	@PostMapping("commentInsert")
	public ModelAndView setCommentInsert(One_commentDTO one_commentDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = questionService.setCommentInsert(one_commentDTO);
		mv.setViewName("/result/ajaxResult");
		return mv;
	}
	//1:1 문의 답변 가져오기
	@GetMapping("commentSelect")
	public ModelAndView getComment(One_commentDTO one_commentDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		one_commentDTO = questionService.getComment(one_commentDTO);
		mv.setViewName("/result/commentResult");
		mv.addObject("comment", one_commentDTO);
		return mv;
	}
	
	//1:1 문의 답변 수정하기
	@PostMapping("commentUpdate")
	public ModelAndView setCommentUpdate(One_commentDTO one_commentDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = questionService.setCommentUpdate(one_commentDTO);
		mv.setViewName("/result/ajaxResult");
		mv.addObject("result", result);
		return mv;
	}
	
	//1:1문의 답변 삭제하기
	@PostMapping("commentDelete")
	public ModelAndView setCommentDelete(One_commentDTO one_commentDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = questionService.setCommentDelete(one_commentDTO);
		mv.setViewName("result/ajaxResult");
		mv.addObject("result", result);
		
		return mv;
	}
	
	//1:1 문의 답변 확인
	@PostMapping("commentNum")
	public ModelAndView getCommentNum(One_commentDTO one_commentDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		Long comment_num = questionService.getCommentNum(one_commentDTO);
		System.out.println(comment_num);
		mv.addObject("result", comment_num);
		mv.setViewName("/result/ajaxResult");
		
		return mv;
	}
	
}
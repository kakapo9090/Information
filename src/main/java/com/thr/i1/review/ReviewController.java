package com.thr.i1.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.thr.i1.util.Pager;

@Controller
@RequestMapping("/review/*")
public class ReviewController {
	
	@Autowired
	private ReviewService reviewService;
	
	@GetMapping("reviewList")
	public ModelAndView getReviewList(ReviewDTO reviewDTO, Pager pager) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<ReviewDTO> ar = reviewService.getReviewList(reviewDTO, pager);
		mv.addObject("review", ar);
		mv.addObject("pager", pager);
		mv.setViewName("review/reviewList");
		
		return mv;
	}
	
	@GetMapping("reviewDetails")
	public ModelAndView getReviewSelect(ReviewDTO reviewDTO) throws Exception {
		ModelAndView  mv = new ModelAndView();
		reviewDTO = reviewService.getReviewSelect(reviewDTO);
		mv.addObject("dto",reviewDTO);
		mv.setViewName("review/reviewDetails");
		
		return mv;
	}
	
	@GetMapping("reviewInsert")
	public ModelAndView setReviewInsert() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("review/reviewInsert");
		return mv;
	}
	
	@PostMapping("reviewInsert")
	public ModelAndView setReviewInsert(ReviewDTO reviewDTO, MultipartFile [] re_files) throws Exception {
		ModelAndView mv = new ModelAndView();
		System.out.println("확인");
		int result = reviewService.setReviewInsert(reviewDTO, re_files);
		//setViewName redirect의 product_id 파라미터 값으로 사용
		Long productId=reviewDTO.getProduct_id();
		mv.setViewName("redirect:../product/productDetails?product_id="+productId);
		return mv;
	}
	
	@PostMapping("reviewDelete")
	public ModelAndView setReviewDelete(ReviewDTO reviewDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = reviewService.setReviewDelete(reviewDTO);
		mv.setViewName("result/ajaxResult");
		mv.addObject("result", result);
		
		return mv;
	}

}
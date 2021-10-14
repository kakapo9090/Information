package com.thr.i1.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.thr.i1.util.Pager;

@Controller
@RequestMapping("/product/*")
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	//제품 list 사이트 이동
	@GetMapping("productList")
	public ModelAndView getList(ProductDTO productDTO, Pager pager) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<ProductDTO> ar = productService.getList(productDTO, pager);
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		mv.setViewName("product/productList");
		return mv;
	}
	
	//제품 상세페이지 사이트로 이동
	 @GetMapping("productDetails") 
	 public ModelAndView getSelect(ProductDTO productDTO) throws Exception { 
		 ModelAndView mv = new ModelAndView();
		 productDTO = productService.getSelect(productDTO);
		 mv.setViewName("product/productDetails"); 
		 mv.addObject("dto", productDTO);
		 return mv; 
	 }
	 
	 //제품 검색 사이트로 이동
	 @GetMapping("productSearch")
	 public ModelAndView getSearch(Pager pager) throws Exception {
		 ModelAndView mv = new ModelAndView();
		 List<ProductDTO> ar = productService.getSearch(pager);
		 mv.setViewName("product/productSearch");
		 mv.addObject("list", ar);
		 mv.addObject("pager", pager);
		 return mv;
	 }
	 

}

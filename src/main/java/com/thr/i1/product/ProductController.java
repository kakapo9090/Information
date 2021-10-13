package com.thr.i1.product;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
	
	@GetMapping("productList")
	public ModelAndView getList(ProductDTO productDTO, Pager pager, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<ProductDTO> ar = productService.getList(productDTO, pager);
		//Product List의 카테고리 파라미터이름, 값 가져오기
		//파라미터이름 : 카테고리 컬럼 명
		String paraName="";
		//파라미터값 : 카테고리 종류
		String category="";
		if(request.getParameter("c1")!=null) {
			paraName="c1";
			category=productDTO.getC1();
		} else if(request.getParameter("c2")!=null) {
			paraName="c2";
			category=productDTO.getC2();
		} else {
			paraName="c3";
			category=productDTO.getC3();
		}
		System.out.println(category);
		mv.addObject("paraName", paraName);
		mv.addObject("category", category);
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		mv.setViewName("link/fresh");
		return mv;
	}
	
	@GetMapping("productDetails")
	public ModelAndView getSelect(ProductDTO productDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		productDTO = productService.getSelect(productDTO);
		mv.setViewName("link/productDetails");
		mv.addObject("dto", productDTO);
		return mv;
	}

}

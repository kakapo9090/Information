package com.thr.i1.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
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
	 
	 //상품 추가 페이지로 이동
	 @GetMapping("productInsert")
	 public ModelAndView setInsert() throws Exception{
		 ModelAndView mv = new ModelAndView();
		 mv.setViewName("product/productInsert");
		 return mv;
	 }
	 
	 //상품 추가하기
	 @PostMapping("productInsert")
	 public ModelAndView setInsert(ProductDTO productDTO, MultipartFile[] files) throws Exception{
		 ModelAndView mv = new ModelAndView();
		 int result = productService.setInsert(productDTO, files);
		 mv.setViewName("redirect: ./productList");
		 return mv;
	 }
	 
	 //상품 삭제하기
	 @GetMapping("productDelete")
	 public ModelAndView setDelete(ProductDTO productDTO) throws Exception{
		 ModelAndView mv = new ModelAndView();
		 int result = productService.setDelete(productDTO);
		 mv.setViewName("redirect: ./productList");
		 return mv;
	 }
	
	 //상품 관련 이미지 폴더에서 삭제하기
	 @PostMapping("fileDelete")
	 public ModelAndView setFileDelete(ProductFilesDTO productFilesDTO) throws Exception{
		 ModelAndView mv = new ModelAndView();
		 int result = productService.setFileDelete(productFilesDTO);
		 mv.addObject("result", result);
		 mv.setViewName("/result/ajaxResult");
		 
		 return mv;
	 }
	 
	//상품 업데이트 페이지 이동
	 @GetMapping("productUpdate")
	 public ModelAndView setUpdate(ProductDTO productDTO) throws Exception{
		 ModelAndView mv = new ModelAndView();
		// List<ProductFilesDTO> files = productService.getFile(productDTO);
		 ProductFilesDTO files= productService.getFile(productDTO);
		 productDTO = productService.getSelect(productDTO);
		 mv.addObject("dto", productDTO);
		 mv.addObject("files", files);
		 mv.setViewName("product/productUpdate");
		 
		 return mv;
	 }
	 
	 //상품 업데이트하기
	 @PostMapping("productUpdate")
	 public ModelAndView setUpdate(ProductDTO productDTO, MultipartFile[] files) throws Exception{
		 ModelAndView mv = new ModelAndView();
		 int result = productService.setUpdate(productDTO, files);
		 mv.setViewName("redirect:./productList");
		 return mv;
	 }
	 
}
© 2021 GitHub, Inc.
Terms

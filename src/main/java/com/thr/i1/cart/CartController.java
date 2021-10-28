package com.thr.i1.cart;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/cart/**")
public class CartController {
	@Autowired
	private CartService cartService;
	
	//장바구니에 담기
	@RequestMapping("insert.do")
	public String insert(@ModelAttribute CartDTO cartDTO, HttpSession session) throws Exception {
		String userid=(String)session.getAttribute("member");//키값 미정
		if(userid==null) {
			System.out.println("호출한 메서드명 : insert");
			System.out.println("로그인 필요");
			System.out.println("세션에 저장된 값 : "+userid);
			return "redirect:/link/login";
		}
		
		//로그인이 되어있을 경우 장바구니 목록 페이지로 이동
		cartDTO.setId(userid);
		cartService.cartInsert(cartDTO); //장바구니 테이블에 저장
	
		return "redirect:/cart/list.do";	//장바구니 목록 이동
	}
	
	
	
	//장바구니 리스트
	@RequestMapping("list.do")
	public ModelAndView list(HttpSession session, ModelAndView mv) throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		
		String userid=(String)session.getAttribute("tuser");//키값 미정
		//로그인한 상태면 실행
		if(userid!=null) {
			List<CartDTO> list = cartService.cartList(userid);//장바구니 목록 출력
			int sumMoney=cartService.sumMoney(userid);//금액 합계
			
			int fee = 3000; //배송비
			//3만원 이상 구매시 배송비 무료
			if(sumMoney>=30000) {
				fee = 0;
			}
			//haspmap에 장바구니에 넣을 각종 값들을 저장함
            map.put("sumMoney", sumMoney);//금액 합계
            map.put("fee", fee); //배송비
            map.put("sumAll", sumMoney+fee); //전체 금액
            map.put("list", list); //장바구니 목록
            map.put("count", list.size()); //장바구니 크기

            mv.setViewName("cart/list");
            mv.addObject("map", map); //데이터 저장
            return mv;
		}else {	//로그인이 안 된 경우
			System.out.println("호출한 메서드명 : list");
			System.out.println("로그인 필요!");
			mv.setViewName("redirect:/link/login");
			return mv;
		}
	}
	
	//장바구니 1개 삭제 - 필요 파라미터 : cart_Id
	@RequestMapping("delete.do")
	public ModelAndView deleteOne(CartDTO cartDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = cartService.deleteOne(cartDTO);
		 String msg = "DELETE FAILED";
		   if(result>0) {
			   msg = "DELETE SUCCESS!";
		   }
		   mv.setViewName("redirect:/cart/list.do");
		   System.out.println(msg);
		return mv;
	}
	
	//장바구니 전체 삭제 - 세션에서 회원아이디 필요
	@RequestMapping("deleteAll.do")
	 public String deleteAll(HttpSession session)throws Exception {
        String userid=(String)session.getAttribute("member");//키값 미정
        String msg = "DELETE ALL FAILED";
        if(userid!=null) {
            int result = cartService.deleteAll(userid);
            if(result>0) {
            	msg = "DELETE ALL SUCCESS!";            	
            }
        }
        System.out.println(msg);
        return "redirect:/cart/list.do";
    }

	
	//장바구니 수량 수정 - 필요한 파라미터 : amount, cart_Id
	@PostMapping("update.do")
	public ModelAndView update(CartDTO cartDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = cartService.update(cartDTO);
		 String msg = "UPDATE FAILED";
		   if(result>0) {
			   msg = "UPDATE SUCCESS!";
		   }
		   mv.setViewName("redirect:/cart/list.do");
		   System.out.println(msg);
		
		return mv;
	}
	
	
}	
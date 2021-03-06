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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.thr.i1.member.TuserDTO;

import oracle.jdbc.proxy.annotation.SetDelegate;


@Controller
@RequestMapping("/cart/**")
public class CartController {
	@Autowired
	private CartService cartService;
	
	//장바구니에 담기 - 넘겨 받는 파라미터: product_Id, fileNum, amount		세션: id, num
	@RequestMapping("insert.do")
	public String insert(@ModelAttribute CartDTO cartDTO, HttpSession session) throws Exception {
		String userid=(String)session.getAttribute("tuser_Id");
		Long usernum = (Long)session.getAttribute("tuser_Num");
		System.out.println("----------------------------");
		System.out.println("호출한 메서드명 : insert");
		
		//테스트용
		//userid="abc";
		//usernum=1;
		
		//로그인이 안 됐을 경우 로그인 페이지 이동
		if(userid==null) {
			System.out.println("로그인 필요!");
			System.out.println("세션에 저장된 id값 : "+userid);
			System.out.println("세션에 저장된 num값 : "+usernum);
			return "redirect:/link/login";
		}
		
		//로그인이 되어있을 경우 세션id, num를 CartDTO에 set
		String msg = "INSERT FAILED";
		System.out.println("세션에 저장된 id값 : "+userid);
		System.out.println("세션에 저장된 num값 : "+usernum);
		cartDTO.setId(userid);	
		cartDTO.setNum(usernum);	
		
		//장바구니에 담은 동일한 상품이 있는지 select문 호출. 
		int count = cartService.countCart(cartDTO.getProduct_id(), cartDTO.getId());
		if(count==0) {
			//count 값이 0인 경우: CART테이블에 DB저장
			int result = cartService.cartInsert(cartDTO);
			if(result>0) {
				msg = "INSERT SUCCESS";
			}
		}else {
			//count 값이 1인 경우: 해당 id, product_Id를 가진 튜플의 amount 값을 더함
			cartService.addAmount(cartDTO);
			System.out.println("이미 장바구니에 해당 상품이 존재하여 INSERT문을 실행하지 않았습니다.");
			msg = "UPDATE SUCCESS: 수량이 증가되었습니다.";
		}
				
		System.out.println(msg);
		return "redirect:/cart/list.do";	//장바구니 목록 이동
	}
	
	
	
	//장바구니 리스트
	@RequestMapping("list.do")
	public ModelAndView list(HttpSession session, ModelAndView mv) throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println("----------------------------");
		System.out.println("호출한 메서드명 : list");
		String userid=(String)session.getAttribute("tuser_Id");
		Long usernum=(Long)session.getAttribute("tuser_Num");
		System.out.println("세션에서 받은 id : "+userid);
		System.out.println("세션에서 받은 num : "+usernum);
		//테스트용
		//userid="abc";
		
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
			System.out.println("장바구니 페이지 이동");
            return mv;
		}else {	//로그인이 안 된 경우
			System.out.println("로그인 필요!");
			mv.setViewName("redirect:/link/login");
			return mv;
		}
	}
	
	
	//장바구니 1개 삭제 - 필요 파라미터 : cart_Id, 세션id
	@RequestMapping("delete.do")
	public ModelAndView deleteOne(CartDTO cartDTO, HttpSession session)throws Exception{
		System.out.println("----------------------------");
		System.out.println("호출한 메서드명 : deleteOne");
		ModelAndView mv = new ModelAndView();
		 String userid=(String)session.getAttribute("tuser_Id");
		 String msg = "DELETE FAILED";
		 System.out.println("삭제할 cart_Id : "+cartDTO.getCart_Id());
		 //테스트용
		 //userid="abc";
		 
		 //로그인 검증
		 if(userid!=null) {
			 cartDTO.setId(userid);
			 int result = cartService.deleteOne(cartDTO);
			 if(result>0) {
				 msg = "DELETE SUCCESS!";
				 System.out.println(msg);
				 mv.setViewName("redirect:/cart/list.do");	
				 return mv;
			 }else {
				 System.out.println(msg);
				 System.out.println("<오류> cart_Id 또는 세션ID 불일치");
				 System.out.println("올바르지 못한 방식으로 접근했습니다.");
				 mv.setViewName("redirect:/cart/list.do");	
				 return mv;
			 }
		   }else {
			   System.out.println(msg);
			   System.out.println("세션이 만료되어 로그인 필요!");
			   mv.setViewName("redirect:/link/login");
		   }
		return mv;
	}
	
	//장바구니 전체 삭제 - 세션에서 회원아이디 필요
	@RequestMapping("deleteAll.do")
	 public String deleteAll(HttpSession session)throws Exception {
        String userid=(String)session.getAttribute("tuser_Id");
        String msg = "DELETE ALL FAILED";
        //테스트용
      	//userid="abc";
        if(userid!=null) {
            int result = cartService.deleteAll(userid);
            if(result>0) {
            	msg = "DELETE ALL SUCCESS!";            	
            }
        }
        System.out.println("----------------------------");
        System.out.println("호출한 메서드명 : deleteAll");
        System.out.println(msg);
        return "redirect:/cart/list.do";
    }

	
	//장바구니 수량 수정 - 필요한 파라미터 : amount, cart_Id, 세션
	//jsp에서 반복문을 통해 동일한 name 속성이 반복적으로 입력되면 서버애서 배열로 쌓아서 작업을 처리해준다.
	@PostMapping("update.do")
	public String update(@RequestParam int[] amount, @RequestParam Long[] cart_Id, HttpSession session)throws Exception{
		
		String userid=(String)session.getAttribute("tuser_Id");
		//테스트용
		//userid="abc";
		System.out.println("----------------------------");
		System.out.println("호출한 메서드명 : update");
		System.out.println("cart_Id배열 길이 : " + cart_Id.length);
		System.out.println("amount배열 길이 : " + amount.length);
		System.out.println("");
		System.out.println("사용자id : " + userid);
		//레코드 갯수만큼 반복문 실행
		   for(int i=0; i<cart_Id.length; i++){
	            CartDTO cartDTO = new CartDTO();
	            cartDTO.setId(userid);
	            cartDTO.setAmount(amount[i]);
	            cartDTO.setCart_Id(cart_Id[i]);

	            System.out.println("인덱스["+i+"]에 "+"파라미터로 받은 cart_Id : " + cart_Id[i]);
	            System.out.println("인덱스["+i+"]에 "+"파라미터로 받은 amount : " + amount[i]);
	            
	            int result = cartService.update(cartDTO);		
	   			if(result>0) {
	   			   System.out.println("UPDATE SUCCESS!");
	   		   }else {
	   			   System.out.println("UPDATE FAILED");
	   		   }
	        }

		
		return "redirect:/cart/list.do";
	}
	
	
	
	
	
	
	
	
//======================================================================================	
	
	
	
	
	//주문 페이지 이동
	@GetMapping("order.do")
	public ModelAndView order(ModelAndView mv, HttpSession session) throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println("----------------------------");
		System.out.println("호출한 메서드명 : order GET");
		String userid=(String)session.getAttribute("tuser_Id");
		//테스트용
		//userid="abc";
		
		//로그인한 상태면 실행
		if(userid!=null) {
			List<CartDTO> list = cartService.cartList(userid);//장바구니 목록 출력
		
			//주문정보에 넘겨줄 회원정보
			TuserDTO tuserDTO = new TuserDTO();
			tuserDTO.setName((String)session.getAttribute("tuser_Name"));
			tuserDTO.setPhone((String)session.getAttribute("tuser_Phone"));
			tuserDTO.setEmail((String)session.getAttribute("tuser_Email"));
			tuserDTO.setAddress((String)session.getAttribute("tuser_Address"));
			map.put("tuser", tuserDTO);
			
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

            mv.setViewName("cart/order");
            mv.addObject("map", map); //데이터 저장
			System.out.println("주문결제 페이지 이동");
            return mv;
		}else {	//로그인이 안 된 경우
			System.out.println("로그인 필요!");
			mv.setViewName("redirect:/link/login");
			return mv;
		}
	}
	
	
	
	//주문완료
	@PostMapping("order.do")
	public ModelAndView order(ModelAndView mv, @ModelAttribute TuserDTO tuserDTO, HttpSession session
			,@RequestParam int[] amount, @RequestParam Long[] cart_Id, @RequestParam int[] product_id
			,@RequestParam int[] fileNum, @RequestParam String[] product_Name, @RequestParam String[] fileName
			,@RequestParam int[] price, @RequestParam int[] money, @RequestParam int sumMoney
			,@RequestParam int fee, @RequestParam int sumAll
			
			) throws Exception{
		
		System.out.println("----------------------------");
		System.out.println("호출한 메서드명 : order POST");
		String userid=(String)session.getAttribute("tuser_Id");
		Long usernum=(Long)session.getAttribute("tuser_Num");
		
		//로그인한 상태면 실행
		if(userid!=null) {
			
			tuserDTO.setId(userid);
			tuserDTO.setNum(usernum);
			String pName = product_Name[0]+ " 외";
			
			//확인용
			System.out.println(tuserDTO.getId());
			System.out.println(tuserDTO.getNum());
			System.out.println(pName);
			
			//CART_ORDER테이블에 DB저장	
			int result = cartService.insertOrder(tuserDTO, pName, sumMoney, fee, sumAll);
			//DB저장 성공시 CART_STORAGE테이블에 DB저장
			if(result>0) {
				//ORDER_NUM의 최대값을 가져와서 CART_STORAGE테이블에 전달
				System.out.println("MAX(ORDER_NUM) : " +cartService.orderNum(userid));
				Long ordernum = cartService.orderNum(userid);
				
				//파라미터로 받은 배열변수들 반복문으로 담기
				for(int i=0; i<cart_Id.length; i++){
					CartDTO cartDTO = new CartDTO();
					cartDTO.setOrder_Num(ordernum);
					cartDTO.setCart_Id(cart_Id[i]);
					cartDTO.setId(userid);
					cartDTO.setNum(usernum);
					cartDTO.setProduct_id(product_id[i]);
					cartDTO.setProduct_Name(product_Name[i]);
					cartDTO.setFileNum(fileNum[i]);
					cartDTO.setFileName(fileName[i]);
					cartDTO.setPrice(price[i]);
					cartDTO.setAmount(amount[i]);
					cartDTO.setMoney(money[i]);
					
					int result2 = cartService.insertStorage(cartDTO);
					if(result2>0) {
						System.out.println("카트번호 "+cart_Id[i]+" insertStorage 성공");
					}else {
						System.out.println("카트번호 "+cart_Id[i]+" insertStorage 실패");
					}
				}//반복문 종료
				
				//주문완료 및 장바구니 삭제
				int result3 = cartService.deleteAll(userid);
				if(result3>0) {
					System.out.println("주문완료 및 장바구니 삭제 성공");
				}else {
					System.out.println("주문완료 및 장바구니 삭제 실패");
				}
			}
			mv.setViewName("redirect:/cart/complete.do");
			System.out.println("주문완료");
            return mv;
            
            
            
		}else {	//로그인이 안 된 경우
			System.out.println("로그인 필요!");
			mv.setViewName("redirect:/link/login");
			return mv;
		}
	}
	
	
	//주문완료 페이지
	@RequestMapping("complete.do")
	public ModelAndView complete()throws Exception{
			System.out.println("----------------------------");
			System.out.println("호출한 메서드명 : complete");
			ModelAndView mv = new ModelAndView();
			mv.setViewName("cart/complete");
			return mv;
		}
	
		
	//주문내역 페이지
	@RequestMapping("orderList.do")
	public ModelAndView orderList(HttpSession session)throws Exception{
		System.out.println("----------------------------");
		System.out.println("호출한 메서드명 : orderList");
		Map<String, Object> map = new HashMap<String, Object>();
		ModelAndView mv = new ModelAndView();
		String userid=(String)session.getAttribute("tuser_Id");
		String username=(String)session.getAttribute("tuser_Name");
		if(userid!=null) {
			List<OrderDTO> list = cartService.orderList(userid);
			map.put("orderList", list);
			map.put("orderCount", list.size());
			map.put("username", username);
			
	
			mv.addObject("map", map);
			mv.setViewName("cart/orderList");
			
		}else {
			mv.setViewName("redirect:/link/login");
		}
		return mv;
	}
		
	
	//주문내역 상세보기
	@RequestMapping("orderSelect.do")
	public ModelAndView orderSelect(@RequestParam Long order_Num, HttpSession session)throws Exception{
		System.out.println("----------------------------");
		System.out.println("호출한 메서드명 : orderSelect");
		Map<String, Object> map = new HashMap<String, Object>();
		ModelAndView mv = new ModelAndView();
		String userid=(String)session.getAttribute("tuser_Id");
		
		if(userid!=null) {
			List<CartDTO> list= cartService.orderSelect(order_Num, userid);
			
			int sumMoney=cartService.sumMoneyOrder(order_Num, userid);
			int fee = 3000; //배송비
			//3만원 이상 구매시 배송비 무료
			if(sumMoney>=30000) {
				fee = 0;
			}
			
			map.put("order_Num", order_Num);
			map.put("sumMoney", sumMoney);//금액 합계
	        map.put("fee", fee); //배송비
	        map.put("sumAll", sumMoney+fee); //전체 금액
			map.put("list", list);
			map.put("count", list.size());
			
			
			
			
			mv.addObject("map", map);
			mv.setViewName("cart/orderSelect");
			
		}else {
			mv.setViewName("redirect:/link/login");
		}
		return mv;
		
	}	
	
	
}//클래스 끝
package com.thr.i1.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thr.i1.member.TuserDTO;

@Service
public class CartService {
	@Autowired
	private CartDAO cartDAO;
	
	//장바구니 담기
	public int cartInsert(CartDTO cartDTO) throws Exception {
		return cartDAO.cartInsert(cartDTO);
	}
	//장바구니 리스트
	public List<CartDTO> cartList(String userid)throws Exception{
		return cartDAO.cartList(userid);
	}
	//장바구니 금액 합계
	public int sumMoney(String userid)throws Exception{
		return cartDAO.sumMoney(userid);
	}
	//장바구니 1개 삭제
	public int deleteOne(CartDTO cartDTO)throws Exception{
		return cartDAO.deleteOne(cartDTO);
	}
	//장바구니 전체 삭제
	public int deleteAll(String userid)throws Exception{
		return cartDAO.deleteAll(userid);
	}
	//장바구니 수정
	public int update(CartDTO cartDTO) throws Exception{
		return cartDAO.update(cartDTO);
	}
	//장바구니 상품 중복 확인	
	public int countCart(int product_id, String userid) throws Exception {
		return cartDAO.countCart(product_id, userid);
	}
	//장바구니 상품 중복 시 수량 추가
	public int addAmount(CartDTO cartDTO)throws Exception{
		return cartDAO.addAmount(cartDTO);
	}
	
	//주문서에 상품 추가
	public int insertOrder(TuserDTO tuserDTO, String pName, int sumMoney, int fee, int sumAll)throws Exception {
		return cartDAO.insertOrder(tuserDTO, pName, sumMoney, fee, sumAll);
	}
	
	//주문내역 조회
	public List<OrderDTO> orderList(String userid)throws Exception{
		return cartDAO.orderList(userid);
	}
	
	//주문번호 출력
	public Long orderNum(String userid)throws Exception{
		return cartDAO.orderNum(userid);
	}
	
	//상세주문내역 담기
	public int insertStorage(CartDTO cartDTO)throws Exception{
		return cartDAO.insertStorage(cartDTO);
	}
	
	 //주문내역 상세보기
	 public List<CartDTO> orderSelect(Long order_Num, String userid)throws Exception{
		 return cartDAO.orderSelect(order_Num, userid);
	 }
	
	 //주문내역 상세보기 총액
	 public int sumMoneyOrder(Long order_Num, String userid)throws Exception{
		 return cartDAO.sumMoneyOrder(order_Num, userid);	 
	 }
}
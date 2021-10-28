package com.thr.i1.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
		
}

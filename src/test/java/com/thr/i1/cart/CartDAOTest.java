package com.thr.i1.cart;

import static org.junit.Assert.assertNotEquals;
import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.thr.i1.MyJunitTest;

public class CartDAOTest extends MyJunitTest{
	@Autowired
	private CartDAO cartDAO;
	
	//@Test
	public void select() throws Exception{	//리스트 출력 테스트
		CartDTO cartDTO = new CartDTO();
		cartDTO.setId("abc");
		List<CartDTO> list = cartDAO.cartList(cartDTO.getId());
		assertNotNull(list);
		System.out.println("list의 값들 : " + list);
		System.out.println("list.size : " + list.size());
	}
	//@Test
	public void countCart() throws Exception{	//장바구니 동일 상품 중복 테스트
		CartDTO cartDTO = new CartDTO();
		cartDTO.setProduct_Id(14);
		cartDTO.setId("abc");
		
		int result = cartDAO.countCart(cartDTO.getProduct_Id(), cartDTO.getId());
		assertNotEquals(0, result);
		System.out.println(result);
	}
	@Test
	public void addAmount() throws Exception{	//장바구니 중복 상품 수량 증가
		CartDTO cartDTO = new CartDTO();
		cartDTO.setId("abc");
		cartDTO.setProduct_Id(9);
		cartDTO.setAmount(100);
		
		int result = cartDAO.addAmount(cartDTO);
		assertNotEquals(0, result);
	}
	
}

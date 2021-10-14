package com.thr.i1.cart;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CartDAO {
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.thr.i1.cart.CartDAO.";
	
	
	//장바구니 담기
	 public int cartInsert(CartDTO cartDTO)throws Exception {
		 return sqlSession.insert(NAMESPACE+"cartInsert", cartDTO); 
	}
	 
	 //장바구니 리스트
	 public List<CartDTO> cartList(String userid) throws Exception{
		 return sqlSession.selectList(NAMESPACE+"cartList", userid);
	 }
}

package com.thr.i1.cart;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	 //장바구니 금액 합계
	 public int sumMoney(String userid) throws Exception{
	     return sqlSession.selectOne(NAMESPACE+"sumMoney", userid); 
	 }
	 //장바구니 1개 삭제
	 public int deleteOne(CartDTO cartDTO) throws Exception{
		 return sqlSession.delete(NAMESPACE+"deleteOne", cartDTO);
	 }
	//장바구니 전체 삭제
	 public int deleteAll(String userid) throws Exception{
		 return sqlSession.delete(NAMESPACE+"deleteAll", userid);
	}
	 //장바구니 수정
	 public int update(CartDTO cartDTO) throws Exception{
		 return sqlSession.update(NAMESPACE+"update", cartDTO);
	 }
	 //장바구니 상품 중복 확인
	 public int countCart(int product_id, String userid) throws Exception{
		 Map<String, Object> map = new HashMap<String, Object>();
		 map.put("product_id", product_id);
		 map.put("user_Id", userid);
		 return sqlSession.selectOne(NAMESPACE+"countCart", map);
	 }
	 //장바구니 상품 중복 시 수량 추가
	 public int addAmount(CartDTO cartDTO) throws Exception{
		 return sqlSession.update(NAMESPACE+"addAmount", cartDTO);
	 }
}
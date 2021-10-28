package com.thr.i1.cart;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.thr.i1.member.TuserDTO;

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
	 
	 //주문서에 상품 추가
	 public int insertOrder(TuserDTO tuserDTO, String pName, int sumMoney, int fee, int sumAll)throws Exception{
		 Map<String, Object> map = new HashMap<String, Object>();
		 map.put("id", tuserDTO.getId());
		 map.put("num", tuserDTO.getNum());
		 map.put("name", tuserDTO.getName());
		 map.put("phone", tuserDTO.getPhone());
		 map.put("email", tuserDTO.getEmail());
		 map.put("address", tuserDTO.getAddress());
		 map.put("pName", pName);
		 map.put("sumMoney", sumMoney);
		 map.put("fee", fee);
		 map.put("sumAll", sumAll);
		 return sqlSession.insert(NAMESPACE+"insertOrder", map);
	 }
	 
	 //주문내역 조회
	 public List<OrderDTO> orderList(String userid)throws Exception{	 
		 return sqlSession.selectList(NAMESPACE+"orderList", userid);
	 }
	 
	 //주문번호 출력
	 public Long orderNum(String userid)throws Exception{
		 return sqlSession.selectOne(NAMESPACE+"orderNum", userid);
	 }
	 
	 //상세주문내역 담기
	 public int insertStorage(CartDTO cartDTO)throws Exception{
		 return sqlSession.insert(NAMESPACE+"insertStorage", cartDTO);
	 }
	 
	 //주문내역 상세보기
	 public List<CartDTO> orderSelect(Long order_Num, String userid)throws Exception{
		 Map<String, Object> map = new HashMap<String, Object>();
		 map.put("order_Num", order_Num);
		 map.put("id", userid);
		 return sqlSession.selectList(NAMESPACE+"orderSelect", map);
	 }
	 
	 //주문내역 상세보기 금액 합계
	 public int sumMoneyOrder(Long order_Num, String userid)throws Exception{
		 Map<String, Object> map = new HashMap<String, Object>();
		 map.put("order_Num", order_Num);
		 map.put("id", userid);
		 return sqlSession.selectOne(NAMESPACE+"sumMoneyOrder", map);
	 }

	 
	 
	 
}
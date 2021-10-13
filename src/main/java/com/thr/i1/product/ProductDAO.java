package com.thr.i1.product;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.thr.i1.util.Pager;

@Repository
public class ProductDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.thr.i1.product.ProductDAO.";

	// 카테고리별 list, pagination, 검색
	public List<ProductDTO> getList(Map<String, Object> map) throws Exception {
		return sqlSession.selectList(NAMESPACE + "getList", map);
	}

	
	//카테고리별 게시물 수 
	public Long getCount(ProductDTO productDTO) throws Exception {
	  return sqlSession.selectOne(NAMESPACE+"getCount", productDTO);
	}
	  
	  //제품 상세 페이지 
	public ProductDTO getSelect(ProductDTO productDTO) throws Exception { 
		return sqlSession.selectOne(NAMESPACE+"getSelect", productDTO); 
	}
	
	public List<ProductDTO> getSearch(Pager pager) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getSearch", pager);
	}
	
	public Long getSearchCount(Pager pager) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getSearchCount", pager);
	}
	 

}

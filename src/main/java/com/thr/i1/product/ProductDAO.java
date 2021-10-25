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

	// 카테고리별 list, pagination
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
	
	//제품 검색
	public List<ProductDTO> getSearch(Pager pager) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getSearch", pager);
	}
	
	//검색된 제품의 수
	public Long getSearchCount(Pager pager) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getSearchCount", pager);
	}
	
	//상품 추가하기
	public int setInsert(ProductDTO productDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setInsert", productDTO);
	}
	
	//상품 이미지 파일 저장하기
	public int setFileInsert(ProductFilesDTO productFilesDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setFileInsert", productFilesDTO);
	}

	//상품 삭제하기
	public int setDelete(ProductDTO productDTO) throws Exception{
		return sqlSession.delete(NAMESPACE+"setDelete", productDTO);
	}
	
	//상품 이미지파일 삭제하기
	public int setFileDelete(ProductFilesDTO productFilesDTO) throws Exception{
		return sqlSession.delete(NAMESPACE+"setFileDelete", productFilesDTO);
	}
	
	//상품 이미지 파일 가져오기
	//public List<ProductFilesDTO> getFile(ProductDTO productDTO) throws Exception{
		//return sqlSession.selectList(NAMESPACE+"getFile", productDTO);
	//}
	
	//이미지 파일 한개일 때
	public ProductFilesDTO getFile(ProductDTO productDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getFile", productDTO);
	}
	
	//상품 업데이트하기
	public int setUpdate(ProductDTO productDTO) throws Exception{
		return sqlSession.update(NAMESPACE+"setUpdate", productDTO);
	}
	
}

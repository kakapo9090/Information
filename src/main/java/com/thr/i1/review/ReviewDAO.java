package com.thr.i1.review;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.thr.i1.review.ReviewDAO.";
	
	public List<ReviewDTO> getReviewList(Map<String, Object> map) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getReviewList", map);
	}
	
	public Long getReviewCount(ReviewDTO reviewDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getReviewCount", reviewDTO);
	}
	
	public ReviewDTO getReviewSelect(ReviewDTO reviewDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getReviewSelect", reviewDTO);
	}
	
	public int setReivewInsert(ReviewDTO reviewDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setReviewInsert", reviewDTO);
	}
	
	public int setReviewFiles(ReviewFilesDTO reviewFilesDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setReviewFiles", reviewFilesDTO);
	}
	
	public int setReviewDelete(ReviewDTO reviewDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setReviewDelete", reviewDTO);
	}
	
	public List<ReviewFilesDTO> getReviewFiles(ReviewDTO reviewDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getReviewFiles", reviewDTO);
	}

}
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
	
	//리뷰 리스트
	public List<ReviewDTO> getReviewList(Map<String, Object> map) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getReviewList", map);
	}
	//한 상품에 대한 리뷰 개수
	public Long getReviewCount(ReviewDTO reviewDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getReviewCount", reviewDTO);
	}
	//리뷰 내용 보기
	public ReviewDTO getReviewSelect(ReviewDTO reviewDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getReviewSelect", reviewDTO);
	}
	//리뷰 추가하기
	public int setReivewInsert(ReviewDTO reviewDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setReviewInsert", reviewDTO);
	}
	//리뷰 파일 추가하기
	public int setReviewFiles(ReviewFilesDTO reviewFilesDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setReviewFiles", reviewFilesDTO);
	}
	//리뷰 지우기
	public int setReviewDelete(ReviewDTO reviewDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setReviewDelete", reviewDTO);
	}
	//리뷰 수정하기
	public int setReviewUpdate(ReviewDTO reviewDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setReviewUpdate", reviewDTO);
	}
	//리뷰 파일 리스트 가져오기
	public List<ReviewFilesDTO> getReviewFiles(ReviewDTO reviewDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getReviewFiles", reviewDTO);
	}
	//한 상품에 대한 별점 평균 구하기
	public Double getReviewStar(ReviewDTO reviewDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getReviewStar", reviewDTO);
	}
	//리뷰 파일 삭제하기
	public int setFileDelete(ReviewFilesDTO reviewFilesDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setFileDelete", reviewFilesDTO);
	}
}
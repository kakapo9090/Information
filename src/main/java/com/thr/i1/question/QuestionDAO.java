package com.thr.i1.question;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.thr.i1.util.NoticePager;

@Repository
public class QuestionDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE="com.thr.i1.question.QuestionDAO.";
	//FAQ 리스트 불러오기
	public List<QuestionDTO> getList(NoticePager pager) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getList", pager);
		
	}
	//FAQ 페이징 처리를 위해 글개수 가져오기
	public Long getCount() throws Exception{
		
		return sqlSession.selectOne(NAMESPACE+"getCount");
	}
	//1:1문의하기
	public int setOneInsert(One_on_oneDTO oneDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setOneInsert", oneDTO);
	}
	
//	public List<One_on_oneDTO> getOneList(One_on_oneDTO oneDTO) throws Exception{
//		return sqlSession.selectList(NAMESPACE+"getOneList", oneDTO);
//	}
	//1:1문의 내역 가져오기
	public List<One_on_oneDTO> getOneList() throws Exception{
		return sqlSession.selectList(NAMESPACE+"getOneList");
		
	}
	
	//1:1문의 내역 각각 가져오기
	public One_on_oneDTO getOneSelect(One_on_oneDTO oneDTO) throws Exception{
		
		return sqlSession.selectOne(NAMESPACE+"getOneSelect", oneDTO);
	}
	
	//1:1문의내역 삭제하기
	public int setOneDelete(One_on_oneDTO oneDTO) throws Exception{
		return sqlSession.delete(NAMESPACE+"setOneDelete", oneDTO);
	}
	
	//1:1문의 답변하기
	public int setCommentInsert(One_commentDTO one_commentDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setCommentInsert", one_commentDTO);
	}
	
	//1:1문의 답변 가져오기
	public One_commentDTO getComment(One_commentDTO one_commentDTO) throws Exception{
		
		return sqlSession.selectOne(NAMESPACE+"getComment", one_commentDTO);
	}
	
	//1:1문의 답변 업데이트
	public int setCommentUpdate(One_commentDTO one_commentDTO) throws Exception{
		return sqlSession.update(NAMESPACE+"setCommentUpdate", one_commentDTO);
	}
	
	//1:1문의 답변 삭제하기
	public int setCommentDelete(One_commentDTO one_commentDTO) throws Exception{
		return sqlSession.delete(NAMESPACE+"setCommentDelete", one_commentDTO);
	}
	
	public Long getCommentNum(One_commentDTO one_commentDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getCommentNum", one_commentDTO);
	}
	
 }
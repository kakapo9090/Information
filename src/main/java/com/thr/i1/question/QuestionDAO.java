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
	
	public List<QuestionDTO> getList(NoticePager pager) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getList", pager);
		
	}
	
	public Long getCount() throws Exception{
		
		return sqlSession.selectOne(NAMESPACE+"getCount");
	}
	
}

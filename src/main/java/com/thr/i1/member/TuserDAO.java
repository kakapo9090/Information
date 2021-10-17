package com.thr.i1.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

@Repository
public class TuserDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.thr.i1.member.TuserDAO";
	
	//로그인 체크
	public TuserDTO login (TuserDTO tuserDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+".login", tuserDTO);
	}
	
	//로그인 정보
	public TuserDTO memberView (TuserDTO tuserDTO) {
		return sqlSession.selectOne(NAMESPACE+".memberView", tuserDTO);
	}
	
	//로그아웃
	public void logout (HttpSession session) {
	}
	
	//회원 생성
	public int setNew (TuserDTO tuserDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+".setNew", tuserDTO);
	}
		
	//ID 중복 확인
	public TuserDTO idCheck(TuserDTO tuserDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+".idCheck", tuserDTO);
	}
	
	//관리자-회원 목록
	public List<TuserDTO> userList() {
		return sqlSession.selectList(NAMESPACE+".memberList");
	}
	
	//관리자-회원 상세조회
	public TuserDTO userView(String id) {
		return sqlSession.selectOne(NAMESPACE+"userView", id);
	}
}

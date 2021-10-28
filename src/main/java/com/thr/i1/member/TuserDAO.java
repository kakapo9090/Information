package com.thr.i1.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		return sqlSession.selectList(NAMESPACE+".userList");
	}
		
	//관리자-회원 상세조회
	public TuserDTO userView(String id) {
		return sqlSession.selectOne(NAMESPACE+".userView", id);
	}
	
	//관리자-회원 정보 수정
	public int userEdit (TuserDTO tuserDTO) {
		return sqlSession.update(NAMESPACE+".userEdit", tuserDTO);
	}
	
	//관리자-회원 정보 삭제
	public int userDelete (TuserDTO tuserDTO) {
		return sqlSession.delete(NAMESPACE+".userDelete", tuserDTO);
	}
	
	//관리자-로그아웃
	public void userLogout (HttpSession session) {
	}
	
	//마이페이지
	public TuserDTO mypage (String id) throws Exception {
		return sqlSession.selectOne(NAMESPACE+".mypage", id);
	}
	
	//마이페이지-회원 탈퇴
	public int mypageDelete (TuserDTO tuserDTO) {
		return sqlSession.delete(NAMESPACE+".mypageDelete", tuserDTO);
	}
}

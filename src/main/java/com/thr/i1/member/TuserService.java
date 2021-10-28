package com.thr.i1.member;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

@Service
public class TuserService {
	
	@Autowired
	private TuserDAO tuserDAO;
	@Autowired
	private HttpSession session;
	@Autowired
	private ServletContext servletContext;
	
	//로그인 체크
	public TuserDTO login (TuserDTO tuserDTO) throws Exception {
		return tuserDAO.login(tuserDTO);
	}
	
	//로그인 정보
	public TuserDTO memberView (TuserDTO tuserDTO) {
		return tuserDAO.memberView(tuserDTO);
	}
	
	//로그아웃
	public void logout (HttpSession session) {
		session.invalidate();
	}
	
	//회원 생성
	public int setNew(TuserDTO tuserDTO) throws Exception {
		return tuserDAO.setNew(tuserDTO);
	}
	
	//ID 중복 확인
	public TuserDTO idCheck(TuserDTO tuserDTO) throws Exception {
		return tuserDAO.idCheck(tuserDTO);
	}
	
	//관리자-회원 목록
	public List<TuserDTO> userList () {
		return tuserDAO.userList();
	}
		 
	//관리자-회원 상세조회
	public TuserDTO userView(String id) {
		return tuserDAO.userView(id);
	}
	
	//관리자-회원 정보 수정
	public int userEdit (TuserDTO tuserDTO) {
		return tuserDAO.userEdit(tuserDTO);
	}
	
	//관리자-회원 정보 삭제
	public int userDelete (TuserDTO tuserDTO) {
		return tuserDAO.userDelete(tuserDTO);
	}
	
	//관리자-로그아웃
	public void userLogout (HttpSession session) {
		session.invalidate();
	}
	
	//마이페이지
	public TuserDTO mypage (String id) throws Exception {
		return tuserDAO.mypage(id);
	}
	
	//마이페이지-회원 탈퇴
	public int mypageDelete (TuserDTO tuserDTO) throws Exception {
		return tuserDAO.mypageDelete(tuserDTO);
	}
}

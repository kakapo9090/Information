package com.thr.i1.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.apache.ibatis.session.SqlSession;

@Repository
public class MemberDAO {
	
	
	private SqlSession sqlSessin;
	private final String NAMESPACE = "com.thr.i1.member.memberDAO";
	
	//회원 생성
	public int setNew (MemberDTO memberDTO) throws Exception {
		return sqlSessin.insert(NAMESPACE+"setNew", memberDTO);
	}
	
	//로그인
	public MemberDTO getLogin (MemberDTO memberDTO) throws Exception {
		return sqlSessin.selectOne(NAMESPACE+"getLogin", memberDTO);
	}
	
}

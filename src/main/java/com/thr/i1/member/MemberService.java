package com.thr.i1.member;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {
	
	@Autowired
	private MemberDAO memberDAO;
	@Autowired
	private HttpSession session;
	@Autowired
	private ServletContext servletContext;
	
}

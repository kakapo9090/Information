package com.thr.i1.question;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thr.i1.util.NoticePager;

@Service
public class QuestionService {

	@Autowired
	private QuestionDAO questionDAO;
	
	public List<QuestionDTO> getList(NoticePager pager) throws Exception{
		System.out.println(pager.getSearch());
		Long totalCount = questionDAO.getCount();
		pager.setPerPage(10L);
		pager.makeRow();
		pager.makeNum(totalCount);
		return questionDAO.getList(pager);
	}
	
}

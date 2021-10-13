package com.thr.i1.question;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thr.i1.util.Pager;

@Service
public class QuestionService {

	@Autowired
	private QuestionDAO questionDAO;
	
	public List<QuestionDTO> getList(Pager pager) throws Exception{
		System.out.println(pager.getSearch());
		Long totalCount = questionDAO.getCount();
		pager.setPerPage(10L);
		pager.makeRow();
		pager.makeNum(totalCount);
		return questionDAO.getList(pager);
	}
	
	public int setOneInsert(One_on_oneDTO oneDTO) throws Exception{
		System.out.println(oneDTO.getOne_cate());
		return questionDAO.setOneInsert(oneDTO);
	}
	
	
	public List<One_on_oneDTO> getOneList(One_on_oneDTO oneDTO) throws Exception{
		System.out.println(oneDTO.getOne_writer());
		return questionDAO.getOneList(oneDTO);
	}
}

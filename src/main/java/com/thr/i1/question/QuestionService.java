package com.thr.i1.question;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thr.i1.util.NoticePager;

@Service
public class QuestionService {

	@Autowired
	private QuestionDAO questionDAO;
	//FAQ 리스트 가져오기
	public List<QuestionDTO> getList(NoticePager pager) throws Exception{
		System.out.println(pager.getSearch());
		Long totalCount = questionDAO.getCount();
		pager.setPerPage(10L);
		pager.makeRow();
		pager.makeNum(totalCount);
		return questionDAO.getList(pager);
	}
	//1:1문의하기
	public int setOneInsert(One_on_oneDTO oneDTO) throws Exception{
		System.out.println(oneDTO.getOne_cate());
		return questionDAO.setOneInsert(oneDTO);
	}
	
	
//	public List<One_on_oneDTO> getOneList(One_on_oneDTO oneDTO) throws Exception{
//		System.out.println(oneDTO.getOne_writer());
//		return questionDAO.getOneList(oneDTO);
//	}
	//1:1문의 내역 가져오기
	public List<One_on_oneDTO> getOneList() throws Exception{
		return questionDAO.getOneList();
	}
	
	//1:1 문의 내역 각각 가져오기
	public One_on_oneDTO getOneSelect(One_on_oneDTO oneDTO) throws Exception{
		return questionDAO.getOneSelect(oneDTO);
		
	}
	
	//1:1문의 삭제하기
	public int setOneDelete(One_on_oneDTO oneDTO) throws Exception{
		return questionDAO.setOneDelete(oneDTO);
	}

	//1:1문의 답변하기
	public int setCommentInsert(One_commentDTO one_commentDTO) throws Exception{
		return questionDAO.setCommentInsert(one_commentDTO);
	}

	//1:1 문의 답변 가져오기
	public One_commentDTO getComment(One_commentDTO one_commentDTO) throws Exception{
		return questionDAO.getComment(one_commentDTO);
	}
	
	//1:1문의 답변 업데이트
	public int setCommentUpdate(One_commentDTO one_commentDTO) throws Exception{
		return questionDAO.setCommentUpdate(one_commentDTO);
	}
	//1:1 문의 답변 삭제하기
	public int setCommentDelete(One_commentDTO one_commentDTO) throws Exception{
		return questionDAO.setCommentDelete(one_commentDTO);
	}

	//1:1문의 답변이 있는지 확인
	public Long getCommentNum(One_commentDTO one_commentDTO) throws Exception{
		return questionDAO.getCommentNum(one_commentDTO);
	}
}
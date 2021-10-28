package com.thr.i1.notice;
import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;


import com.thr.i1.util.FileUpload;
import com.thr.i1.util.NoticePager;


@Service
public class NoticeService {

	@Autowired
	private NoticeDAO noticeDAO;
	@Autowired
	private ServletContext servletContext;
	@Autowired
	private FileUpload fileUpload;
	
	public List<NoticeDTO> getList(NoticePager pager)throws Exception{
		pager.setPerPage(5L);
		pager.makeRow();
		Long totalCount = noticeDAO.getCount();
		pager.makeNum(totalCount);
		//System.out.println(totalCount);
		return noticeDAO.getList(pager);
	}
	
	public NoticeDTO getSelect(NoticeDTO noticeDTO) throws Exception{
		return noticeDAO.getSelect(noticeDTO);
	}
	
	public int setInsert(NoticeDTO noticeDTO, MultipartFile[] files) throws Exception{
		//먼저 글이 insert 되면 파일도 insert하기
		//저장할 폴더 선택
		String realPath = servletContext.getRealPath("/resource/upload/noti/");
		System.out.println(realPath);
		// 파일 객체 만들어서 경로 담기
		File file = new File(realPath);
		//미리 글을 insert한 후 번호 가져오기
		int result = noticeDAO.setInsert(noticeDTO);
		System.out.println(noticeDTO.getNo_num());
		
		for(MultipartFile multipartFile: files) {
			String fileName = fileUpload.fileSave(multipartFile, file);
			NotiFilesDTO notiFilesDTO = new NotiFilesDTO();
			notiFilesDTO.setNo_fileName(fileName);
			notiFilesDTO.setNo_num(noticeDTO.getNo_num());
			notiFilesDTO.setNo_oriName(multipartFile.getOriginalFilename());
			
			result = noticeDAO.setFileInsert(notiFilesDTO);
		}
		
		
		return result;
	}
	
//	public int setInsert(NoticeDTO noticeDTO) throws Exception{
//		return noticeDAO.setInsert(noticeDTO);
//		
//	}
	
	public int setUpdate(NoticeDTO noticeDTO, MultipartFile[] files) throws Exception{
		String realPath = servletContext.getRealPath("/resource/upload/noti/");
		
		File file = new File(realPath);
		int result = noticeDAO.setUpdate(noticeDTO);
		System.out.println("업데이트할 글번호 :"+ noticeDTO.getNo_num());
		
		for(MultipartFile multipartFile: files) {
			String fileName = fileUpload.fileSave(multipartFile, file);
			NotiFilesDTO notiFilesDTO = new NotiFilesDTO();
			notiFilesDTO.setNo_fileName(fileName);
			notiFilesDTO.setNo_num(noticeDTO.getNo_num());
			notiFilesDTO.setNo_oriName(multipartFile.getOriginalFilename());
			result = noticeDAO.setFileInsert(notiFilesDTO);
		}
		return result;
	}
	
	//파일 정보 불러오기
	public List<NotiFilesDTO> getFile(NoticeDTO noticeDTO) throws Exception {
		return noticeDAO.getFile(noticeDTO);
	}
	
	//첨부파일 지우면 폴더에서도 지우기
	public int setFileDelete(NotiFilesDTO notiFilesDTO) throws Exception{
		String realPath = servletContext.getRealPath("/resource/upload/noti/");
		File file = new File(realPath, notiFilesDTO.getNo_fileName());
		file.delete();
		
		return noticeDAO.setFileDelete(notiFilesDTO);
	}
	
	//공지사항 지울 때 첨부파일도 함께 삭제하기
	public int setDelete(NoticeDTO noticeDTO) throws Exception{
		
		List<NotiFilesDTO> no = noticeDAO.getFile(noticeDTO);
		String realPath = servletContext.getRealPath("/resource/upload/noti/");
		for(NotiFilesDTO noti: no) {
			File file = new File(realPath, noti.getNo_fileName());
			file.delete();
		}
		return noticeDAO.setDelete(noticeDTO);
	}
	
}
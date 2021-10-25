package com.thr.i1.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.thr.i1.util.NoticePager;



@Controller
@RequestMapping("/notices/**")
public class NoticeController {

	@Autowired
	private NoticeService noticeService;
	
	//리스트 가져오기
	@GetMapping("list")
	public ModelAndView getList(NoticePager pager) throws Exception{
		ModelAndView mv = new ModelAndView();
	
		List<NoticeDTO> ar = noticeService.getList(pager);
		//System.out.println(ar.get(0).getNo_num());
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		mv.setViewName("./notice/noticeList");
		return mv;
		
	}
	
	//세부 내용 보기
	@GetMapping("select")
	public ModelAndView getSelect(NoticeDTO noticeDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		noticeDTO = noticeService.getSelect(noticeDTO);
		List<NotiFilesDTO> noti = noticeService.getFile(noticeDTO);
		mv.addObject("notice", noticeDTO);
		mv.addObject("noti", noti);
		mv.setViewName("./notice/noticeSelect");
		return mv;
	}
	
	//글 내용 DB전송, 등록/리스트 페이지로 이동하기
	@PostMapping("insert")
	public ModelAndView setInsert(NoticeDTO noticeDTO, MultipartFile[] files) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = noticeService.setInsert(noticeDTO, files);
		//int result = noticeService.setInsert(noticeDTO);
		System.out.println(result);
		mv.setViewName("redirect:./list");
		return mv;
	}
	
	
	//글 등록 페이지로 이동
	@GetMapping("insert")
	public ModelAndView setInsert() throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("notice/noticeInsert");
		
		return mv;
	}
	
	//파일 폴더에서 삭제하기
	@PostMapping("fileDelete")
	public ModelAndView setFileDelete(NotiFilesDTO notiFilesDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result =noticeService.setFileDelete(notiFilesDTO);
		mv.setViewName("result/ajaxResult");
		mv.addObject("result", result);
		return mv;
	}
	
	//파일 다운로드 하기
	@GetMapping("down") 
	public ModelAndView fileDown(NotiFilesDTO notiFilesDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.addObject("file", notiFilesDTO);
		mv.setViewName("fileDown");
		return mv;
		
	}
	
	//글 삭제하기
	@GetMapping("delete")
	public ModelAndView setDelete(NoticeDTO noticeDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = noticeService.setDelete(noticeDTO);
		mv.setViewName("redirect:./list");
		return mv;
	}
	//글 수정하러 가기
	@GetMapping("update")
	public ModelAndView setUpdate(NoticeDTO noticeDTO, ModelAndView mv) throws Exception{
		List<NotiFilesDTO> file = noticeService.getFile(noticeDTO);
		noticeDTO = noticeService.getSelect(noticeDTO);
		mv.addObject("dto", noticeDTO);
		mv.addObject("file", file);
		mv.setViewName("notice/noticeUpdate");
		return mv;
	}
	
	
	//글 수정하기
	@PostMapping("update")
	public ModelAndView setUpdate(NoticeDTO noticeDTO, MultipartFile[] files) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = noticeService.setUpdate(noticeDTO, files);
		mv.setViewName("redirect: ./list");
		return mv;
	}
}
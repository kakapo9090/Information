package com.thr.i1.review;

import java.io.File;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.thr.i1.util.FileUpload;
import com.thr.i1.util.Pager;

@Service
public class ReviewService {
	
	@Autowired
	private ReviewDAO reviewDAO;
	@Autowired
	private ServletContext servletContext;
	@Autowired
	private FileUpload fileUpload;
	
	//리뷰 리스트 가져오기-pager 처리
	public List<ReviewDTO> getReviewList(ReviewDTO reviewDTO, Pager pager) throws Exception {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("review", reviewDTO);
		map.put("pager", pager);
		Long totalCount = reviewDAO.getReviewCount(reviewDTO);
		pager.setTotalCount(totalCount);
		pager.makeRow();
		pager.makeNum();
		
		return reviewDAO.getReviewList(map);
	}
	
	//리뷰 contents, 파일 보여주기
	public ReviewDTO getReviewSelect(ReviewDTO reviewDTO) throws Exception {
		return reviewDAO.getReviewSelect(reviewDTO);
	}
	
	//리뷰, 리뷰 파일 추가하기
	public int setReviewInsert(ReviewDTO reviewDTO, MultipartFile [] files) throws Exception {
		//파일 저장할 폴더 위치 : /resources/upload/review/
		String realPath = this.servletContext.getRealPath("/resources/upload/review/");
		System.out.println("real path : "+realPath);
		File file = new File(realPath);
		int result = reviewDAO.setReivewInsert(reviewDTO);
		for(MultipartFile multipartFile:files) {
			String fileName = fileUpload.fileSave(multipartFile, file);
			ReviewFilesDTO reviewFilesDTO = new ReviewFilesDTO();
			reviewFilesDTO.setRe_num(reviewDTO.getRe_num());
			reviewFilesDTO.setRe_fileName(fileName);
			reviewFilesDTO.setRe_oriName(multipartFile.getOriginalFilename());
			
			result = reviewDAO.setReviewFiles(reviewFilesDTO);
		}
		return result;
	}
	
	//리뷰, 리뷰 파일 삭제
	public int setReviewDelete(ReviewDTO reviewDTO) throws Exception {
		//삭제할 파일 경로
		String realPath = servletContext.getRealPath("/resources/upload/review/");
		//삭제할 파일
		List<ReviewFilesDTO> ar = reviewDAO.getReviewFiles(reviewDTO);
		for(ReviewFilesDTO reviewFilesDTO:ar) {
			File file = new File(realPath, reviewFilesDTO.getRe_fileName());
			file.delete();
		}
		
		return reviewDAO.setReviewDelete(reviewDTO);
	}

}
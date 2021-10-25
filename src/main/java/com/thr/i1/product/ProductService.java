package com.thr.i1.product;

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
public class ProductService {

	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private ServletContext servletContext;
	@Autowired
	private FileUpload fileUpload;

	// 카테고리별 list, pagination
	public List<ProductDTO> getList(ProductDTO productDTO, Pager pager) throws Exception {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("product", productDTO);
		map.put("pager", pager);
		Long totalCount = productDAO.getCount(productDTO);
		pager.setTotalCount(totalCount);
		pager.makeNum();
		pager.makeRow();

		return productDAO.getList(map);
	}

	
	  //제품 상세 페이지 
	public ProductDTO getSelect(ProductDTO productDTO) throws Exception { 
		return productDAO.getSelect(productDTO); 
	}
	
	//제품 검색, 검색된 제품 pagination 처리
	public List<ProductDTO> getSearch(Pager pager) throws Exception {
		Long totalCount = productDAO.getSearchCount(pager);
		pager.setTotalCount(totalCount);
		pager.makeNum();
		pager.makeRow();
		
		return productDAO.getSearch(pager);
	}
	 
	//상품 추가하기
	public int setInsert(ProductDTO productDTO, MultipartFile[] files) throws Exception{
		
		//파일을 저장할 경로 선택
		String realPath = servletContext.getRealPath("/resources/upload/product");
		//파일 객체 만들어서 경로 담아주기
		File file = new File(realPath);
		System.out.println("상품 파일경로: "+realPath);
		
		//글 먼저 insert하고 파일 insert 하기
		int result = productDAO.setInsert(productDTO);
		System.out.println(productDTO.getProduct_id());
		
		//파일 for문 이용해서 여러 개를 저장
		for(MultipartFile multipartFile: files) {
			String fileName = fileUpload.fileSave(multipartFile, file);
			ProductFilesDTO productFilesDTO = new ProductFilesDTO();
			productFilesDTO.setFileName(fileName);
			productFilesDTO.setProduct_id(productDTO.getProduct_id());
			productFilesDTO.setOriName(multipartFile.getOriginalFilename());
			
			result = productDAO.setFileInsert(productFilesDTO);
		}
		
		return result;
	}
	
	//상품 이미지 정보 불러오기
//	public List<ProductFilesDTO> getFile(ProductDTO productDTO) throws Exception{
//		return productDAO.getFile(productDTO);
//	}
	
	public ProductFilesDTO getFile(ProductDTO productDTO) throws Exception{
		return productDAO.getFile(productDTO);
	}
	
	//상품 삭제하기
	public int setDelete(ProductDTO productDTO) throws Exception{
		//상품 삭제하면 관련 이미지 파일도 삭제하기
		//List<ProductFilesDTO> files = productDAO.getFile(productDTO);
		ProductFilesDTO files= productDAO.getFile(productDTO);
		System.out.println("상품번호확인:"+ productDTO.getProduct_id());
		//관련된 여러 이미지 파일 모두 삭제하도록 for문 사용
		String realPath = servletContext.getRealPath("/resources/upload/product");
//		for(ProductFilesDTO productFilesDTO : files) {
//			File file = new File(realPath, productFilesDTO.getFileName());
//			file.delete();
//		}
		File file = new File(realPath, files.getFileName());
		file.delete();
		
		return productDAO.setDelete(productDTO);
	}
	
	//상품 업데이트할 때 첨부파일 지우면 폴더에서도 지우기
	public int setFileDelete(ProductFilesDTO productFilesDTO) throws Exception{
		String realPath = servletContext.getRealPath("/resources/upload/product");
		File file = new File(realPath, productFilesDTO.getFileName());
		file.delete();
		
		return productDAO.setFileDelete(productFilesDTO);
	}
	
	//상품 업데이트 하기
	public int setUpdate(ProductDTO productDTO, MultipartFile[] files) throws Exception{
		//파일 경로 가져오기
		String realPath = servletContext.getRealPath("/resources/upload/product");
		//파일 객체에 경로 담기
		File file = new File(realPath);
		System.out.println("글번호 확인:" + productDTO.getProduct_id());
		// 글 내용 먼저 업데이트 하기
		int result = productDAO.setUpdate(productDTO);
		//새로 수정한 파일 저장하기
		for(MultipartFile multipartFile: files) {
			String fileName = fileUpload.fileSave(multipartFile, file);
			ProductFilesDTO productFilesDTO = new ProductFilesDTO();
			productFilesDTO.setFileName(fileName);
			productFilesDTO.setProduct_id(productDTO.getProduct_id());
			productFilesDTO.setOriName(multipartFile.getOriginalFilename());
			
			result = productDAO.setFileInsert(productFilesDTO);
		}
		
		return result;
	}
	
	
}
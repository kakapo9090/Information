package com.thr.i1.util;
import java.io.File;
import java.util.UUID;

import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileUpload{

	public String fileSave(MultipartFile multipartFile, File file) throws Exception {
		//폴더 없으면 생성하기
		if(!file.exists()) {
			file.mkdirs();
		}
		
		//파일 이름 붙이기
		String fileName = UUID.randomUUID().toString();
		fileName = fileName+"_"+multipartFile.getOriginalFilename();
		System.out.println("파일명"+fileName);
		
		//file 객체에 파일 이름과 경로 저장
		file = new File(file, fileName);
		
		//저장하기
		//FileCopyUtils.copy(multipartFile.getBytes(), file);
		
		multipartFile.transferTo(file);
		return fileName;
		
	}
	
}

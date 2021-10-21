package com.thr.i1.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;

import com.thr.i1.notice.NotiFilesDTO;



@Component
public class FileDown extends AbstractView{

	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		//폴더명
		//String noti = (String)model.get("noti");
		String noti = "noti";
		//파일명
		NotiFilesDTO notiFilesDTO = (NotiFilesDTO)model.get("file");
		//realPath 구하기
		noti = request.getSession().getServletContext().getRealPath("/resource/upload/"+noti);
		
		File file = new File(noti, notiFilesDTO.getNo_fileName());
		
		//한글 처리
		response.setCharacterEncoding("UTF-8");
		//파일크기
		response.setContentLength((int)file.length());
		
		//다운할 때 파일 이름 인코딩
		String fileName = notiFilesDTO.getNo_fileName();
		String downName = fileName.substring(fileName.lastIndexOf("_")+1);
		
		//response header 설정
		response.setHeader("Content-Disposition", "attachment;fileName=\""+downName+"\"");
		response.setHeader("Content-Transfer-Encoding", "binary");
		
		//파일을 읽어서 Client로 전송
		FileInputStream fi = new FileInputStream(file);
		OutputStream os = response.getOutputStream();
		
		FileCopyUtils.copy(fi, os);
		
		os.close();
		fi.close();
		
	}
}

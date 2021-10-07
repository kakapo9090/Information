package com.thr.i1.notice;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.thr.i1.util.Pager;



@Repository
public class NoticeDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE="com.thr.i1.notice.NoticeDAO.";
	
	//글 업데이트 - 파일 없이
	public int setUpdate(NoticeDTO noticeDTO) throws Exception{
		return sqlSession.update(NAMESPACE+"setUpdate", noticeDTO);
	}
	//파일 폴더에서 삭제
	public int setFileDelete(NotiFilesDTO notiFilesDTO) throws Exception{
		return sqlSession.delete(NAMESPACE+"setFileDelete", notiFilesDTO);
	}
	
	//파일 DB에서 삭제
	public List<NotiFilesDTO> getFile(NoticeDTO noticeDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getFile", noticeDTO);
	}
	
	//file 업로드
	public int setFileInsert(NotiFilesDTO notiFilesDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setFileInsert", notiFilesDTO);
	}
	
	//totalcount 구하기
	public Long getCount() throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getCount");
	}
	
	public List<NoticeDTO> getList(Pager pager) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getList", pager);
	}
	
	public NoticeDTO getSelect(NoticeDTO noticeDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getSelect", noticeDTO);
	}
	
	public int setInsert(NoticeDTO noticeDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setInsert", noticeDTO);
	}
	
	public int setDelete(NoticeDTO noticeDTO) throws Exception{
		return sqlSession.delete(NAMESPACE+"setDelete", noticeDTO);
	}
	
}

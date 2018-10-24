package com.incbook.project.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.incbook.project.domain.AnnouncementVO;

@Repository
public class AnnouncementDAOImpl implements AnnouncementDAO {

	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "my_incbook.mapper.announcementMapper";
	
	@Override
	public List<AnnouncementVO> announcementList() throws Exception {

		return sqlSession.selectList(namespace+".announcementList");
	}

	@Override
	public AnnouncementVO readAnnouncement(Integer id) throws Exception {
		
		
		return sqlSession.selectOne(namespace+".readAnnouncement", id);
	}

	@Override
	public void updateViewCnt(Integer id) throws Exception {
		
		sqlSession.update(namespace+".updateViewCnt", id);
	}

}

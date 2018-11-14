package com.incbook.project.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.incbook.project.domain.AnnouncementVO;
import com.incbook.project.domain.pagecriteria.BoardCriteria;

@Repository
public class AnnouncementDAOImpl implements AnnouncementDAO {

	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "my_incbook.mapper.announcementMapper";
	
	@Override
	public List<AnnouncementVO> announcementList(BoardCriteria cri) throws Exception {

		return sqlSession.selectList(namespace+".announcementList", cri);
	}

	@Override
	public AnnouncementVO readAnnouncement(Integer id) throws Exception {
		
		
		return sqlSession.selectOne(namespace+".readAnnouncement", id);
	}

	@Override
	public void updateViewCnt(Integer id) throws Exception {
		
		sqlSession.update(namespace+".updateViewCnt", id);
	}

	@Override
	public int listSearchCount(BoardCriteria cri) throws Exception {
		
		return sqlSession.selectOne(namespace+".listSearchCount", cri);
	}

	@Override
	public void announcementInsert(AnnouncementVO vo) throws Exception {
		sqlSession.insert(namespace+".announcementInsert", vo);
	}

	@Override
	public void deleteAnnouncement(Integer id) throws Exception {
		sqlSession.delete(namespace+".deleteAnnouncement", id);
		
	}

	@Override
	public void updateAnnouncement(AnnouncementVO vo) throws Exception {
		sqlSession.update(namespace+".updateAnnouncement", vo);
	}

}

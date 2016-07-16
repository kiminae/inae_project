package inae.board.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardDAO.class);

	@Autowired
	private SqlSession sqlSession;
	
	public List<BoardVO> selectBoardList() {
		return sqlSession.selectList("board.selectBoardList");
	}

	public void insertMemberInfo(Map<String, String> parameterMap) {
		sqlSession.insert("board.insertMemberInfo", parameterMap);
	}

	@SuppressWarnings("unchecked")
	public Map<String, String> selectMemberInfo(Map<String, String> parameterMap) {
		return (Map<String, String>) sqlSession.selectOne("board.selectMemberInfo", parameterMap);
	}

	public void insertBoardInfo(Map<String, String> parameterMap) {
		sqlSession.insert("board.insertBoardInfo", parameterMap);
	}

	public Map<String, String> selectBoardInfo(Map<String, String> parameterMap) {
		return sqlSession.selectOne("board.selectBoardInfo", parameterMap);
	}

	public void updateBoardInfo(Map<String, String> parameterMap) {
		sqlSession.update("board.updateBoardInfo", parameterMap);
	}
	
	public void deleteBoardInfo(Map<String, String> parameterMap) {
		sqlSession.update("board.deleteBoardInfo", parameterMap);
	}

}

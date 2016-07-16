package inae.board.service;

import inae.board.dao.BoardDAO;
import inae.board.dao.BoardVO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service("boardService")
public class BoardServiceImpl implements BoardService {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardServiceImpl.class);
	
	//@Resource(name="boardDAO")
	@Autowired
	private BoardDAO boardDAO;
	
	@Override
	public List<BoardVO> selectBoardList() throws Exception {
		return boardDAO.selectBoardList();
	}
	

	@Override
	public void insertMemberInfo(Map<String, String> parameterMap) {
		boardDAO.insertMemberInfo(parameterMap);
	}

	@Override
	public Map<String, String> selectMemberInfo(Map<String, String> parameterMap) {
		return boardDAO.selectMemberInfo(parameterMap);
	}
	

	@Override
	public void insertBoardInfo(Map<String, String> parameterMap) {
		boardDAO.insertBoardInfo(parameterMap);
	}
	

	@Override
	public Map<String, String> selectBoardInfo(Map<String, String> parameterMap) {
		return boardDAO.selectBoardInfo(parameterMap);
	}



	@Override
	public void updateBoardInfo(Map<String, String> parameterMap) {
		boardDAO.updateBoardInfo(parameterMap);
	}
	
	@Override
	public void deleteBoardInfo(Map<String, String> parameterMap) {
		boardDAO.deleteBoardInfo(parameterMap);
	}

	
	/**
	 * 조건에 맞는 게시물 목록을 조회 한다.
	 * @return
	 * 
	 * @param boardVO
	 * @param attrbFlag
	 * @exception Exception Exception
	 */
	public Map<String, Object> selectTest() throws Exception {

		Map<String, Object> map = new HashMap<String, Object>();

		map.put("resultList", "123");
		map.put("resultCnt", 123);

		return map;
		
	}


	
}

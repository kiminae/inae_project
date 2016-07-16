package inae.board.service;

import inae.board.dao.BoardVO;

import java.util.List;
import java.util.Map;

public interface BoardService {
	
	
	
	public List<BoardVO> selectBoardList() throws Exception;

	public void insertMemberInfo(Map<String, String> parameterMap);

	public Map<String, String> selectMemberInfo(Map<String, String> parameterMap);

	public void insertBoardInfo(Map<String, String> parameterMap);

	public Map<String, String> selectBoardInfo(Map<String, String> parameterMap);
	
	public void updateBoardInfo(Map<String, String> parameterMap);
	
	public void deleteBoardInfo(Map<String, String> parameterMap);

}

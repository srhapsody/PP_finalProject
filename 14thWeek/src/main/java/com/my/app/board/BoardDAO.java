package com.my.app.board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO{
	@Autowired
	SqlSession sqlSession;
	
	public int insertBoard(BoardVO vo) {
		int result = sqlSession.insert("Board.insertBoard",vo);
		return result;
	}
	
	public int updateBoard(BoardVO vo) {
		int result = sqlSession.update("Board.updateBoard",vo);
		return result;
	}
	
	public int deleteBoard(int seq) {
		int result = sqlSession.delete("Board.deleteBoard",seq);
		return result;
	}
	
	public BoardVO getBoard(int seq) {
		BoardVO result = sqlSession.selectOne("Board.getBoard",seq);
		return result;
	}
	
	public List<BoardVO> getBoardList() {
		List<BoardVO> result = sqlSession.selectList("Board.getBoardList");
		return result;
	}
	
	
	
	
	
	
	
	public int insertBoards(BoardVO vo) {
		int result = sqlSession.insert("Board.insertBoards",vo);
		return result;
	}
	
	public int updateBoards(BoardVO vo) {
		int result = sqlSession.update("Board.updateBoards",vo);
		return result;
	}
	
	public int deleteBoards(int seq) {
		int result = sqlSession.delete("Board.deleteBoards",seq);
		return result;
	}
	
	public BoardVO getBoards(int seq) {
		BoardVO result = sqlSession.selectOne("Board.getBoards",seq);
		return result;
	}
	
	public List<BoardVO> getBoardLists() {
		List<BoardVO> result = sqlSession.selectList("Board.getBoardLists");
		return result;
	}
	
	
}
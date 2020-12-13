package com.my.app.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.my.app.board.BoardVO;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	BoardDAO boardDAO;
	
	@Override
	public int insertBoard(BoardVO vo) {
		return boardDAO.insertBoard(vo);
	}
	
	@Override
	public int deleteBoard(int seq) {
		return boardDAO.deleteBoard(seq);
	}
	
	
	@Override
	public int updateBoard(BoardVO vo) {
		return boardDAO.updateBoard(vo);
	}
	
	@Override
	public BoardVO getBoard(int seq) {
		return boardDAO.getBoard(seq);
	}
	
	
	@Override
	public List<BoardVO> getBoardList(){
		List<BoardVO> result = boardDAO.getBoardList();
		return result;
	}
	
	
	
	
	@Override
	public int insertBoards(BoardVO vo) {
		return boardDAO.insertBoards(vo);
	}
	
	@Override
	public int deleteBoards(int seq) {
		return boardDAO.deleteBoards(seq);
	}
	
	
	@Override
	public int updateBoards(BoardVO vo) {
		return boardDAO.updateBoards(vo);
	}
	
	@Override
	public BoardVO getBoards(int seq) {
		return boardDAO.getBoards(seq);
	}
	
	
	@Override
	public List<BoardVO> getBoardLists(){
		List<BoardVO> result = boardDAO.getBoardLists();
		return result;
	}
}
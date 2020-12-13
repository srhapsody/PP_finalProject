package com.my.app.board;

import java.util.List;

public interface BoardService {
	public int insertBoard(BoardVO vo);
	public int deleteBoard(int seq);
	public int updateBoard(BoardVO vo);
	public BoardVO getBoard(int seq);
	public List<BoardVO> getBoardList();
	
	public int insertBoards(BoardVO vo);
	public int deleteBoards(int seq);
	public int updateBoards(BoardVO vo);
	public BoardVO getBoards(int seq);
	public List<BoardVO> getBoardLists();
}
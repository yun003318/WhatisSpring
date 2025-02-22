package com.springbook.biz.board.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springbook.biz.board.BoardService;
import com.springbook.biz.board.BoardVO;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	//private BoardDAO boardDAO;
	private BoardDAOSpring2 boardDAO;
	//private BoardDAOSpring boardDAO;
	
	@Override
	public void insertBoard(BoardVO vo) {	
		// 트랜잭션
//		vo.setSeq(400);
//		boardDAO.insertBoard(vo);
//		vo.setSeq(400);
		boardDAO.insertBoard(vo);	
	}

	@Override
	public void updateBoard(BoardVO vo) {
		boardDAO.updateBoard(vo);
	}

	@Override
	public void deleteBoard(BoardVO vo) {
		boardDAO.deleteBoard(vo);
	}

	@Override
	public BoardVO getBoard(BoardVO vo) {
		return boardDAO.getBoard(vo);
	}

	@Override
	public List<BoardVO> getBoardList(BoardVO vo) {
		return boardDAO.getBoardList(vo);
	}

}

package com.bbshop.bit.service;

import java.util.List;

import com.bbshop.bit.domain.BoardVO;

public interface BoardService {
	public void register(BoardVO board);
	
	public BoardVO get(Long bno);
	
	public boolean modify(BoardVO board);
	
	public boolean remove(Long bno);
	
	public List<BoardVO> getList();
}

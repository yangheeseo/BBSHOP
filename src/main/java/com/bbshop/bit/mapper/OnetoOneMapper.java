package com.bbshop.bit.mapper;

import java.util.List;

import com.bbshop.bit.domain.OnetoOneVO;

public interface OnetoOneMapper {
	
	//@Select("select * from tbl_board where bno > 0")
	public List<OnetoOneVO> OnetoOne_getList();
	
	public void OnetoOne_insertSelectKey(OnetoOneVO board);
	
	public OnetoOneVO OnetoOne_read(Long bno);
	
	public int OnetoOne_delete(Long bno);
	
	public int OnetoOne_update(OnetoOneVO board);
}

package com.bbshop.bit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.bbshop.bit.domain.FAQVO;

public interface OnetoOneMapper {
	
	//@Select("select * from tbl_board where bno > 0")
	public List<OnetoOneMapper> getList();
	
	public void insert(OnetoOneMapper board);
	
	public void insertSelectKey(OnetoOneMapper board);
	
	public OnetoOneMapper read(Long bno);
	
	public int delete(Long bno);
	
	public int update(OnetoOneMapper board);
}

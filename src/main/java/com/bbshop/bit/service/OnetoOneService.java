package com.bbshop.bit.service;

import java.util.List;

import com.bbshop.bit.domain.FAQVO;
import com.bbshop.bit.domain.OnetoOneVO;

public interface OnetoOneService {
	public void OnetoOne_register(OnetoOneVO board);
	
	public OnetoOneVO OnetoOne_get(Long bno);
	
	public boolean OnetoOne_modify(OnetoOneVO board);
	
	public boolean OnetoOne_remove(Long bno);	
	
	public List<OnetoOneVO> OnetoOne_getList();
}

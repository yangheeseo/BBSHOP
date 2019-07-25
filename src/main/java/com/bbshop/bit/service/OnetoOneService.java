package com.bbshop.bit.service;

import java.util.List;

import com.bbshop.bit.domain.FAQVO;

public interface OnetoOneService {
	public void register(FAQVO board);
	
	public FAQVO get(Long bno);
	
	public boolean modify(FAQVO board);
	
	public boolean remove(Long bno);
	
	public List<FAQVO> getList();
}

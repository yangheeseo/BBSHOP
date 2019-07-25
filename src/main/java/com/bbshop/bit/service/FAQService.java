package com.bbshop.bit.service;

import java.util.List;

import com.bbshop.bit.domain.FAQVO;

public interface FAQService {
	
	public FAQVO FAQ_get(Long bno);
	
	public List<FAQVO> FAQ_getList();
}

package com.bbshop.bit.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.bbshop.bit.domain.FAQVO;
import com.bbshop.bit.mapper.FAQMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Log4j
@Service
@AllArgsConstructor
public class FAQServiceImpl implements FAQService{
	
	private FAQMapper mapper;

	@Override
	public FAQVO FAQ_get(Long bno) {
		log.info("get.........." + bno);
		// TODO Auto-generated method stub
		return mapper.FAQ_read(bno);
	}

	@Override
	public List<FAQVO> FAQ_getList() {
		// TODO Auto-generated method stub
		log.info("getList..........");
		return mapper.FAQ_getList();
	}
}

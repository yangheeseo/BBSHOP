package com.bbshop.bit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bbshop.bit.domain.FAQVO;
import com.bbshop.bit.mapper.FAQMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Log4j
@Service("faqservice")
@AllArgsConstructor
public class FAQServiceImpl implements FAQService{
	
	@Autowired
	private FAQMapper FAQMapper;

	@Override
	public FAQVO FAQ_get(Long FAQ_NUM) {
		log.info("get.........." + FAQ_NUM);
		// TODO Auto-generated method stub
		return FAQMapper.FAQ_read(FAQ_NUM);
	}

	@Override
	public List<FAQVO> FAQ_getList() {
		// TODO Auto-generated method stub
		log.info("getList..........");
		return FAQMapper.FAQ_getList();
	}
}

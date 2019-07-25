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
	public void register(FAQVO board) {
		log.info("register......" + board);
		
		mapper.insertSelectKey(board);
		
	}

	@Override
	public FAQVO get(Long bno) {
		
		log.info("get.........." + bno);
		// TODO Auto-generated method stub
		return mapper.read(bno);
	}

	@Override
	public boolean modify(FAQVO board) {
		
		log.info("modify....." + board);
		// TODO Auto-generated method stub
		return mapper.update(board) == 1;
	}


	@Override
	public List<FAQVO> getList() {
		
		log.info("getList..........");
		// TODO Auto-generated method stub
		return mapper.getList();
	}

	@Override
	public boolean remove(Long bno) {
		// TODO Auto-generated method stub
		return false;
	}
}

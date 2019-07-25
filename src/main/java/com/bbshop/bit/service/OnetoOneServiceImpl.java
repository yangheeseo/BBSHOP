package com.bbshop.bit.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.bbshop.bit.domain.FAQVO;
import com.bbshop.bit.domain.OnetoOneVO;
import com.bbshop.bit.mapper.OnetoOneMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Log4j
@Service
@AllArgsConstructor
public class OnetoOneServiceImpl implements OnetoOneService{
	
	private OnetoOneMapper mapper;

	@Override //등록
	public void OnetoOne_register(OnetoOneVO board) {
		log.info("register......" + board);
		
		mapper.OnetoOne_insertSelectKey(board);
	}

	@Override //글상세
	public OnetoOneVO OnetoOne_get(Long bno) {
		log.info("get......." + bno);
		// TODO Auto-generated method stub
		
		return mapper.OnetoOne_read(bno);
	}

	@Override //수정
	public boolean OnetoOne_modify(OnetoOneVO board) {
		// TODO Auto-generated method stub
		log.info("modify......" + board);
		return mapper.OnetoOne_update(board) == 1;
	}

	@Override //삭제
	public boolean OnetoOne_remove(Long bno) {
		log.info("remove......" + bno);
		// TODO Auto-generated method stub
		return mapper.OnetoOne_delete(bno) == 1;
	}

	@Override //목록보기
	public List<OnetoOneVO> OnetoOne_getList() {
		// TODO Auto-generated method stub
		return null;
	}

	
}

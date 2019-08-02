package com.bbshop.bit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bbshop.bit.domain.OnetoOneVO;
import com.bbshop.bit.domain.PageDTO;
import com.bbshop.bit.domain.PagingVO;
import com.bbshop.bit.service.OnetoOneService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
public class OnetoOneController {
	
	@Autowired
	private OnetoOneService onetooneservice;

	@GetMapping("/onetoonelist.do")
	public String list(Model model) {

		model.addAttribute("list", onetooneservice.OnetoOne_getList(pag));
		
		int total = onetooneservice.getTotal(pag);
		
		model.addAttribute("pageMaker", new PageDTO(pag, total));
		
		return "shoppingMall/customerService/one_to_one_list";
	}

	@PostMapping("/onetoone_register.do")
	public String register(OnetoOneVO board, RedirectAttributes rttr) {

		onetooneservice.OnetoOne_register(board);
		rttr.addFlashAttribute("result", board.getONE_ONE_NUM());
		
		return "shoppingMall/customerService/one_to_one_list";
	}

	@GetMapping("/onetoone_get.do")
	public String get(@RequestParam("One_One_NUM") Long One_One_NUM, @ModelAttribute("pag") PagingVO pag, Model model) {

		model.addAttribute("board", onetooneservice.OnetoOne_get(One_One_NUM));
		
		return "shoppingMall/customerService/one_to_one_list_detail";
	}

	@PostMapping("/onetoone_modify.do")
	public String modify(OnetoOneVO board, RedirectAttributes rttr) {
		log.info("modify:" + board);
	
	if (onetooneservice.OnetoOne_modify(board)) {
		rttr.addFlashAttribute("result", "success");
	}
	return "shoppingMall/customerService/one_to_one_list_modify";
	}
	@PostMapping("/onetoone_remove.do")
	public String remove(@RequestParam("bno") Long bno, RedirectAttributes rttr) {
		log.info("remove..." + bno);
		if(onetooneservice.OnetoOne_remove(bno)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "shoppingMall/customerService/one_to_one_list_detail";
	}
	
}

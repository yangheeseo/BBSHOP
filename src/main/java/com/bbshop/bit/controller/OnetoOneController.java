package com.bbshop.bit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bbshop.bit.domain.FAQVO;
import com.bbshop.bit.domain.OnetoOneVO;
import com.bbshop.bit.service.OnetoOneService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
public class OnetoOneController {
	
	@Autowired
	private OnetoOneService onetooneService;

	@GetMapping("/onetoonelist.do")
	public String list(Model model) {

		model.addAttribute("list", onetooneService.OnetoOne_getList());
		
		return "shoppingMall/customerService/one_to_one_list";
	}

	@PostMapping("/onetoone_register.do")
	public String register(OnetoOneVO board, RedirectAttributes rttr) {

		onetooneService.OnetoOne_register(board);
		rttr.addFlashAttribute("result", board.getONE_ONE_NUM());
		
		return "shoppingMall/customerService/one_to_one_list";
	}

	@GetMapping("/onetoone_get.do")
	public String get(@RequestParam("bno") Long bno, Model model) {

		model.addAttribute("board", onetooneService.OnetoOne_get(bno));
		
		return "shoppingMall/customerService/one_to_one_list_detail";
	}

	@PostMapping("/onetoone_modify.do")
	public String modify(OnetoOneVO board, RedirectAttributes rttr) {
		log.info("modify:" + board);
	
	if (onetooneService.OnetoOne_modify(board)) {
		rttr.addFlashAttribute("result", "success");
	}
	return "shoppingMall/customerService/one_to_one_list_modify";
	}
	@PostMapping("/onetoone_remove.do")
	public String remove(@RequestParam("bno") Long bno, RedirectAttributes rttr) {
		log.info("remove..." + bno);
		if(onetooneService.OnetoOne_remove(bno)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "shoppingMall/customerService/one_to_one_list_detail";
	}
	
}

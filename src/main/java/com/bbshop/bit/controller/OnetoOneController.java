package com.bbshop.bit.controller;

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
@RequestMapping("/board/*")
@AllArgsConstructor
public class OnetoOneController {
	private OnetoOneService service;

	@GetMapping("/list")
	public void list(Model model) {

		log.info("list");
		model.addAttribute("list", service.OnetoOne_getList());
	}

	@PostMapping("/register")
	public String register(OnetoOneVO board, RedirectAttributes rttr) {
		log.info("register: " + board);
		service.OnetoOne_register(board);
		rttr.addFlashAttribute("result", board.getONE_ONE_NUM());
		return "redirect:/board/list";
	}

	@GetMapping("/get")
	public void get(@RequestParam("bno") Long bno, Model model) {

		log.info("/get");
		model.addAttribute("board", service.OnetoOne_get(bno));
	}

	@PostMapping("/modify")
	public String modify(OnetoOneVO board, RedirectAttributes rttr) {
		log.info("modify:" + board);
	
	if (service.OnetoOne_modify(board)) {
		rttr.addFlashAttribute("result", "success");
	}
		return "redirect:/board/list";
	}
	@PostMapping("/remove")
	public String remove(@RequestParam("bno") Long bno, RedirectAttributes rttr) {
		log.info("remove..." + bno);
		if(service.OnetoOne_remove(bno)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/board/list";
	}
	
}

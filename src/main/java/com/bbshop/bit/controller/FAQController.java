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
import com.bbshop.bit.service.FAQService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
public class FAQController {
	
	@Autowired
	private FAQService faqservice;

	@GetMapping("/faq_list.do")
	public String list(Model model) {

		model.addAttribute("list", faqservice.FAQ_getList());
		
		return "shoppingMall/customerService/faq";
	}

	@GetMapping("/faq_get.do")
	public String get(@RequestParam("FAQ_NUM") Long FAQ_NUM, Model model) {

		model.addAttribute("board", 1);
		
		return "shoppingMall/customerService/faq_detail";
	}

	
}

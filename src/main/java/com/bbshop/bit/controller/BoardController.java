package com.bbshop.bit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bbshop.bit.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	private BoardService service;
	
	@GetMapping("/list")
	public void list(Model model) {
		

	}
}

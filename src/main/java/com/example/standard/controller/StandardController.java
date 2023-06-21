package com.example.standard.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

public interface StandardController {
	
	@GetMapping("/list")
	void list(Model model);
}

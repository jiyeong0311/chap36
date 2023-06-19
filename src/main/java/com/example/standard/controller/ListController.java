package com.example.standard.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.http.HttpServletRequest;

public interface ListController {

	@GetMapping("/list")
	void list(Model model, HttpServletRequest request);
}

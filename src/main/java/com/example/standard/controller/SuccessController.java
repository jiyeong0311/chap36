package com.example.standard.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.http.HttpServletRequest;

public interface SuccessController {

	@GetMapping("/success")
	void success(Model model, HttpServletRequest request);
	
}

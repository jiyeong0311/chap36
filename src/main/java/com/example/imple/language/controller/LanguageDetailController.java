package com.example.imple.language.controller;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.server.ResponseStatusException;

import com.example.standard.controller.DetailController;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/language")
public class LanguageDetailController implements DetailController<String> {

	@Override
	public String detail(String key, Model model, HttpServletRequest request) {
		throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Not Implemenation");
	}
	
	@Override
	public String detail(String key1, String key2, Model model, HttpServletRequest request) {
		
		return "language/detail";
	}

}

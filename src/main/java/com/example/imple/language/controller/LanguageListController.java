package com.example.imple.language.controller;

import org.springframework.ui.Model;

import com.example.standard.controller.ListController;
import com.example.standard.controller.PageableController;

import jakarta.servlet.http.HttpServletRequest;

public class LanguageListController implements ListController, PageableController {

	@Override
	public String page(int pageNum, int pageSize, Model model) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void list(Model model, HttpServletRequest request) {
		// TODO Auto-generated method stub
		
	}

}

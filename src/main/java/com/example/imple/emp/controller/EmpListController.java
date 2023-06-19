package com.example.imple.emp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.imple.emp.mapper.EmpMapper;
import com.example.standard.controller.ListController;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/emp")
public class EmpListController implements ListController {

	@Autowired
	EmpMapper mapper;
	
	@Override
	public void list(Model model, HttpServletRequest request) {
		var list = mapper.selectAllWithDept();
		model.addAttribute("list", list);
	}

}

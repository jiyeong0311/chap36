package com.example.imple.dept.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.imple.dept.mapper.DeptMapper;
import com.example.standard.controller.ListController;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/dept")
public class DeptListController implements ListController {
	
	@Autowired
	DeptMapper mapper;

	@Override
	public void list(Model model, HttpServletRequest request) {
		var list = mapper.selectAllWithEmps();
		model.addAttribute("list", list);
	}
	
}

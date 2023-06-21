package com.example.imple.salgrade.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.imple.salgrade.mapper.SalgradeMapper;
import com.example.standard.controller.StandardController;

@Controller
@RequestMapping("/salgrade")
public class SalgradeListController implements StandardController {

	@Autowired
	SalgradeMapper salgradeMapper;

	@Override
	public void list(Model model) {
		var list = salgradeMapper.selectAll();
		var cnt = salgradeMapper.countAll();
		model.addAttribute("list", list);
		model.addAttribute("cnt",cnt);
	}
	
	
	
}

package com.example.imple.salgrade.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.imple.emp.mapper.EmpMapper;
import com.example.imple.salgrade.mapper.SalgradeMapper;
import com.example.standard.controller.DetailController;

import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/salgrade")
@Slf4j
public class SalgradeDetailController implements DetailController<Integer> {

	@Autowired
	SalgradeMapper mapper;

	@Override
	public String detail(Integer key, Model model, HttpServletRequest request) {
		log.debug("key : {}", key);
		var salgrade = mapper.selectByGrade(key);
		model.addAttribute("salgrade", salgrade);
		return "salgrade/detail";
	}
	
}

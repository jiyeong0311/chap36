package com.example.imple.emp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.imple.emp.mapper.EmpMapper;
import com.example.standard.controller.DetailController;

import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/emp")
@Slf4j
public class EmpDetailController implements DetailController<Integer> {

	@Autowired
	EmpMapper mapper;

	@Override
	public String detail(Integer key, Model model, HttpServletRequest request) {
		log.debug("key : {}", key);
		var emp = mapper.selectByEmpno(key);
		model.addAttribute("emp", emp);
		return "emp/detail";
	}
	
}

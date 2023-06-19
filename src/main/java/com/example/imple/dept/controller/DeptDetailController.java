package com.example.imple.dept.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.imple.dept.mapper.DeptMapper;
import com.example.standard.controller.DetailController;

import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/dept")
@Slf4j
public class DeptDetailController implements DetailController<Integer> {

	@Autowired
	DeptMapper mapper;
	
	@Override
	public String detail(Integer key, Model model, HttpServletRequest request) {
		log.debug("key = {}", key);
		
		var dept = mapper.selectByDeptno(key);
		model.addAttribute("dept", dept);
		
		return "dept/detail";
	}

}

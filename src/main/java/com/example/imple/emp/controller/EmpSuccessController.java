package com.example.imple.emp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.imple.dept.mapper.DeptMapper;
import com.example.standard.controller.SuccessController;

import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/emp")
@Slf4j
public class EmpSuccessController implements SuccessController {

	@Autowired
	DeptMapper mapper;

	@Override
	public void success(Model model, HttpServletRequest request) {
		log.info("/emp/success 요청됨");
	}
	

}

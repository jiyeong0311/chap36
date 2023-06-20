package com.example.imple.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.imple.dept.mapper.DeptMapper;
import com.example.imple.user.mapper.UserMapper;
import com.example.standard.controller.DetailController;

import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/user")
@Slf4j
public class UserDetailController implements DetailController<String> {

	@Autowired
	UserMapper mapper;
	
	@Override
	public String detail(String key, Model model, HttpServletRequest request) {
		log.debug("key = {}", key);
		
		var users = mapper.selectById(key);
		model.addAttribute("users", users);
		
		return "user/detail";
	}


}

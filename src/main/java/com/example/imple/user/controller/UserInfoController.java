package com.example.imple.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.imple.user.mapper.UserMapper;

import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/user")
@Slf4j
public class UserInfoController {

	@Autowired
	UserMapper mapper;
	
	@GetMapping("/info/{key}")
	public String userInfo(String key, Model model, HttpServletRequest request) {
		log.debug("key = {}", key);
		var users = mapper.selectById(key);
		model.addAttribute("users", users);
		
		return "user/login";
	}
	
}

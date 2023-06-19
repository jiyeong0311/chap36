package com.example.imple.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.imple.user.model.UserRegistrationDTO;
import com.example.imple.user.service.UserRegistrationService;

import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/user")
@Slf4j
public class UserRegistrationController {

	@Autowired
	UserRegistrationService service;
	
	@GetMapping("/register")
 	public void showRegistrationForm() {
		// 회원가입 폼 보여주는 뷰 페이지 이동
	}
	
	@PostMapping("/register")
	public String processRegistrationForm(@Validated UserRegistrationDTO registrationDTO, BindingResult binding) {
		
		if(binding.hasErrors()) {
			return"user/register?error";
		}
		
		
		try {
			service.registerUser(registrationDTO);
		} catch (Exception e) {
			e.getMessage();
			return "redirect:/user/register";
		}

		// 회원 가입 성공하면 로그인 페이지로 이동
		return "redirect:/user/login";
	}


	
	
	
	
	
}

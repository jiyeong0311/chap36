package com.example.imple.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserLoginController {
	
	@GetMapping("/login")
	void login() {
		
	}
	
	@PostMapping("/login-fail")
	String loginFail() {
		
		return "user/login";
	}

}

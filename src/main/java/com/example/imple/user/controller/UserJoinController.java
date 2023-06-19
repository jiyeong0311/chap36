package com.example.imple.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.imple.user.mapper.UserMapper;
import com.example.imple.user.model.UserDTO;
import com.example.imple.user.service.UserJoinService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/user")
@Slf4j
public class UserJoinController {

	@Autowired
	UserJoinService service;
	
	@Autowired
	UserMapper mapper;
	
	@GetMapping("/join")
 	public void showJoinForm(Model model, HttpServletRequest request) {
		log.info("Get join()...");
		var error = request.getParameter("error");
		if (error == null) {
			var session = request.getSession();
			session.removeAttribute("users");
			session.removeAttribute("binding");
		}
		
		
	}
	
	
	
	@PostMapping("/join")
	public String processjoinForm(@Validated UserDTO dto, BindingResult binding, Model model, HttpServletRequest request, RedirectAttributes attr) {
		log.info("Post join()...");
		System.out.println(dto);
		
		var session = request.getSession();
		session.setAttribute("users", dto);
		session.setAttribute("binding", binding);
		
		
		if(binding.hasErrors()) 
			return"redirect:/user/join?error";
		
		
		
		try {
			service.joinUser(dto);
		} catch (DuplicateKeyException e) {
			binding.reject("duplicate key","아이디가 중복됩니다.");
			return "redirect:/user/join?error";
		}

		// 회원 가입 성공하면 로그인 페이지로 이동
		return "redirect:/user/joinPro?join";
	}


	
	
	
	
	
}

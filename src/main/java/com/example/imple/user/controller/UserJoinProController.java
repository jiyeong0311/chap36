package com.example.imple.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.imple.user.mapper.UserMapper;

import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/user")
@Slf4j
public class UserJoinProController{
	
	@Autowired
	UserMapper mapper;
	
	@GetMapping("/joinPro")
	public void JoinPro(Model model, HttpServletRequest request) {
		log.info("/user/joinPro 요청됨");
		
		  String joinParam = request.getParameter("join");
	        if (joinParam != null && joinParam.equals("true")) {
	            // 회원가입 성공에 대한 처리를 여기에 작성
	            model.addAttribute("message", "회원가입이 성공적으로 완료되었습니다.");
	        }

	        return;
	    

	}


	
	
}

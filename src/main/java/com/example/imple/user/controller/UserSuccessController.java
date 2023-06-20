package com.example.imple.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.imple.user.mapper.UserMapper;
import com.example.standard.controller.SuccessController;

import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/user")
@Slf4j
public class UserSuccessController implements SuccessController {

	@Autowired
	UserMapper mapper;

	@Override
	public void success(Model model, HttpServletRequest request) {
		log.info("/user/success 요청됨");
	}
	

}

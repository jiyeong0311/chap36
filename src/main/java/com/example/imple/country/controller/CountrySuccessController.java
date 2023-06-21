package com.example.imple.country.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.imple.country.mapper.CountryMapper;
import com.example.standard.controller.SuccessController;

import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/country")
@Slf4j
public class CountrySuccessController implements SuccessController {

	@Autowired
	CountryMapper mapper;
	
	@Override
	public void success(Model model, HttpServletRequest request) {
		log.info("/country/success 요청됨");
	}

}

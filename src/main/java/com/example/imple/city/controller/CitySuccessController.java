package com.example.imple.city.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.standard.controller.SuccessController;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/city")
public class CitySuccessController implements SuccessController {

	@Override
	public void success(Model model, HttpServletRequest request) {
		
	}

}

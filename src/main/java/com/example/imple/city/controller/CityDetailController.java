package com.example.imple.city.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.imple.city.mapper.CityMapper;
import com.example.standard.controller.PageableController;
import com.example.standard.controller.DetailController;
import com.example.standard.controller.ListController;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/city")
@Slf4j
public class CityDetailController implements DetailController<Integer> {

	@Autowired
	CityMapper mapper;

	@Override
	public String detail(Integer key, Model model, HttpServletRequest request) {
		log.debug("key : {}", key);
		var city = mapper.selectById(key);
		model.addAttribute("city", city);
		return "city/detail";
	}

}

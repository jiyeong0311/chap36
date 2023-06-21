package com.example.imple.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.imple.board.mapper.BoardMapper;
import com.example.imple.city.mapper.CityMapper;
import com.example.standard.controller.SuccessController;

import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/board")
@Slf4j
public class BoardSuccessController implements SuccessController {

	@Autowired
	BoardMapper mapper;
	
	
	@Override
	public void success(Model model, HttpServletRequest request) {
		log.info("/board/success 요청됨");
	}

}

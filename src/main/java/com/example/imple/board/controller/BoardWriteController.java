package com.example.imple.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.imple.board.mapper.BoardMapper;
import com.example.imple.board.model.Board;
import com.example.imple.board.model.BoardDTO;

import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;
 
@Controller
@RequestMapping("/board")
@Slf4j
public class BoardWriteController  {
    
	@Autowired
	BoardMapper mapper;
	
	@GetMapping("/write")
 	public void write(Model model, HttpServletRequest request) {
		log.info("Get write()...");
		var error = request.getParameter("error");
		if (error == null) {
			var session = request.getSession();
			session.removeAttribute("board");
			session.removeAttribute("binding");
		}
		
		
		
	}
	
	
	
	@PostMapping("/write")
	public String write(@Validated BoardDTO dto, BindingResult binding, Model model, HttpServletRequest request, RedirectAttributes attr) {
		log.info("Post join()...");
		System.out.println(dto);
		
		var session = request.getSession();
		session.setAttribute("board", dto);
		session.setAttribute("binding", binding);
		
		if(binding.hasErrors()) 
			return"redirect:/board/write?error";
		
    

		
		var board = dto.getModel();
        mapper.insertBoard(board);


	        return "redirect:/board/success?write";
	}

}
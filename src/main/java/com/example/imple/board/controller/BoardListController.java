package com.example.imple.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.imple.board.mapper.BoardMapper;

import jakarta.servlet.http.HttpServletRequest;
 
@Controller
@RequestMapping("/board")
public class BoardListController  {
    
	@Autowired
	BoardMapper mapper;
	
    @GetMapping("/list")
    public void list(Model model, HttpServletRequest request) {
    	
    	var list = mapper.selectBoardList(); // 게시글 목록을 가져옴
    	
    	model.addAttribute("list", list); // 모델에 게시글 목록 추가


    	
    	
    }
	

    
    
    
    

}


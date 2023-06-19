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
public class BoardDetailController  {
    
	@Autowired
	BoardMapper mapper;
	
    @GetMapping("/detail")
    public String detail(Integer key, Model model, HttpServletRequest request) {
		var board = mapper.selectBoardIdx(key);
    	
		if (board == null) {
	        // 게시글이 존재하지 않을 경우 처리
	        return "redirect:/board/list";
	    }

	    // 게시글을 조회하면 조회수 증가
	    mapper.updateHitCntByBoardIdx(board.getBoardIdx());

    	
        model.addAttribute("board", board);
        return "board/detail";
    	

        

    }
	


}


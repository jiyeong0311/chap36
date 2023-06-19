package com.example.imple.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.imple.board.mapper.BoardMapper;
import com.example.imple.board.model.Board;

import jakarta.servlet.http.HttpServletRequest;
 
@Controller
@RequestMapping("/board")
public class BoardListController  {
    
	@Autowired
	BoardMapper mapper;
	
    @GetMapping("/list")
    public void list(Model model, HttpServletRequest request) {
    	
    	var list = mapper.selectBoardList(); // 게시글 목록을 가져옴
    	
    	
//      조회수 구현 -> detailController로 옮겨둠 
//    	for (Board board : list) {
//    		 var hitCnt = board.getHitCnt(); // 현재 조회수를 가져옵니다.
//    	     hitCnt++; // 조회수를 증가시킵니다.
//    	     board.setHitCnt(hitCnt); // 게시물의 조회수를 증가시킨 값으로 업데이트합니다.
//    	     mapper.updateHitCntByBoardIdx(board.getBoardIdx()); // 데이터베이스에서 게시물의 조회수를 업데이트합니다.
//    		
//    	}
    	
    	
    	model.addAttribute("list", list); // 모델에 게시글 목록 추가

        

    }
	


}


package com.example.imple.board.controller;

import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.imple.board.mapper.BoardMapper;
import com.example.imple.board.model.BoardDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/board")
@Slf4j
public class BoardUpdateController {

	@Autowired
	BoardMapper mapper;

	
	@GetMapping("/update")
	public void update(Model model, HttpServletRequest request) {
		log.info("GET update()...");
		var error = request.getParameter("error");
		if (Objects.isNull(error)) {
			var session = request.getSession();
			session.removeAttribute("board");
			session.removeAttribute("binding");
		}
		
		var boardIdx = request.getParameter("boardIdx");
		if (Objects.nonNull(boardIdx)) {
			var key = Integer.parseInt(boardIdx);
			var board = mapper.selectBoardIdx(key);
			model.addAttribute("board", board);
		}
	}

	@PostMapping("/update")
	@Transactional
	public String update(@Valid BoardDTO dto, BindingResult binding, Model model, HttpServletRequest request, RedirectAttributes attr) {
		log.info("POST update()...");
		
		var session = request.getSession();
		session.setAttribute("board", dto);
		session.setAttribute("binding", binding);
		
		if (binding.hasErrors())
			return "redirect:/board/update?error";
		
		var board = dto.getModel();
		
		
		try {
			mapper.updateBoard(board);
		} catch (Exception e) {
			String errorMessage = "데이터베이스 업데이트 중 오류가 발생했습니다.";
			log.error(errorMessage, e);
			attr.addFlashAttribute("errorMessage", errorMessage);
			return "redirect:/board/update";
		}
		
		
		
		return "redirect:/board/list";
	}
	
}

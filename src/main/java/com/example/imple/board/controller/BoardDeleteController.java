package com.example.imple.board.controller;

import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
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
public class BoardDeleteController {

	@Autowired
	BoardMapper mapper;
	
	@GetMapping("/delete")
	public void delete(Model model, HttpServletRequest request) {
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

	@PostMapping("/delete")
	public String delete(@Valid BoardDTO dto, BindingResult binding, Model model, HttpServletRequest request,
			RedirectAttributes attr) {
		
		var session = request.getSession();
		session.setAttribute("board", dto);
		session.setAttribute("binding", binding);
		
		if (binding.hasErrors())
			return "redirect:/board/delete?error";
		
		var board = dto.getModel();
		try {
			mapper.delete(board.getBoardIdx());
		} catch (DataIntegrityViolationException e) {
			binding.reject("foreign", "직원이 있는 부서는 삭제할 수 없습니다.");
			return "redirect:/board/delete?error";
		}

		return "redirect:/board/list";
	}

}

package com.example.standard.controller;

import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.imple.dept.model.DeptDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;

public interface DeleteController<DTO> {

	@GetMapping("/delete")
	void delete(Model model, HttpServletRequest request);
	
	@PostMapping("/delete")
	String delete(@Valid DTO dto, BindingResult binding, Model model, HttpServletRequest request, RedirectAttributes attr);
	
}

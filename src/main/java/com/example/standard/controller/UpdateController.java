package com.example.standard.controller;

import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.imple.dept.model.DeptDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;

public interface UpdateController<DTO> {

	@GetMapping("/update")
	void update(Model model, HttpServletRequest request);
	
	@PostMapping("/update")
	String update(@Valid DTO dto, BindingResult binding, Model model, HttpServletRequest request, RedirectAttributes attr);
	
}

package com.example.imple.salgrade.controller;

import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.imple.emp.mapper.EmpMapper;
import com.example.imple.emp.model.EmpDTO;
import com.example.imple.salgrade.mapper.SalgradeMapper;
import com.example.imple.salgrade.model.SalgradeDTO;
import com.example.standard.controller.CreateController;
import com.example.standard.util.Gender;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/salgrade")
@Slf4j
public class SalgradeCreateController implements CreateController<SalgradeDTO> {

	@Autowired
	SalgradeMapper mapper;
	
	@Override
	public void create(Model model, HttpServletRequest request) {
		
		var error = request.getParameter("error");
		if (Objects.isNull(error)) {
			var session = request.getSession();
			session.removeAttribute("salgrade");
			session.removeAttribute("binding");
		}
		
	}

	@Override
	public String create(@Valid SalgradeDTO dto, BindingResult binding, Model model, HttpServletRequest request,
			RedirectAttributes attr) {
		
		var session = request.getSession();
		session.setAttribute("salgrade", dto);
		session.setAttribute("binding", binding);
		
		if (binding.hasErrors()) {
			return "redirect:/salgrade/create?error";
		}
		
		var salgrade = dto.getModel();
		try {
			mapper.insertSalgrade(salgrade);
		} catch (DuplicateKeyException e) {
			binding.reject("duplicate", "번호가 중복됩니다.");
			return "redirect:/salgrade/create?error";
		} catch (DataIntegrityViolationException e) {
			binding.reject("foreign", "번호가 존재하지 않습니다.");
			return "redirect:/salgrade/create?error";
		}
		
		
		return "redirect:/salgrade/success?create";
	}

}

package com.example.imple.emp.controller;

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
import com.example.standard.controller.CreateController;
import com.example.standard.util.Gender;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/emp")
@Slf4j
public class EmpCreateController implements CreateController<EmpDTO> {

	@Autowired
	EmpMapper mapper;
	
	@Override
	public void create(Model model, HttpServletRequest request) {
		
		var error = request.getParameter("error");
		if (Objects.isNull(error)) {
			var session = request.getSession();
			session.removeAttribute("emp");
			session.removeAttribute("binding");
		}
		
	}

	@Override
	public String create(@Valid EmpDTO dto, BindingResult binding, Model model, HttpServletRequest request,
			RedirectAttributes attr) {
		
		var session = request.getSession();
		session.setAttribute("emp", dto);
		session.setAttribute("binding", binding);
		
		if (binding.hasErrors()) {
			return "redirect:/emp/create?error";
		}
		
		var emp = dto.getModel();
		try {
			mapper.insertEmp(emp);
		} catch (DuplicateKeyException e) {
			binding.reject("duplicate", "직원번호가 중복됩니다.");
			return "redirect:/emp/create?error";
		} catch (DataIntegrityViolationException e) {
			binding.reject("foreign", "부서번호가 존재하지 않습니다.");
			return "redirect:/emp/create?error";
		}
		
		
		return "redirect:/emp/success?create";
	}

}

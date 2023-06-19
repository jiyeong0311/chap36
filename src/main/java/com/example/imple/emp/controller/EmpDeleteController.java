package com.example.imple.emp.controller;

import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.imple.emp.mapper.EmpMapper;
import com.example.imple.emp.model.EmpDTO;
import com.example.standard.controller.DeleteController;
import com.example.standard.controller.UpdateController;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/emp")
@Slf4j
public class EmpDeleteController implements DeleteController<EmpDTO> {

	@Autowired
	EmpMapper mapper;
	
	@Override
	public void delete(Model model, HttpServletRequest request) {
		var error = request.getParameter("error");
		if (Objects.isNull(error)) {
			var session = request.getSession();
			session.removeAttribute("emp");
			session.removeAttribute("binding");
		}
		
		var empno = request.getParameter("empno");
		if (Objects.nonNull(empno)) {
			var key = Integer.parseInt(empno);
			var emp = mapper.selectByEmpno(key);
			model.addAttribute("emp", emp);
		}
	}

	@Override
	public String delete(@Valid EmpDTO dto, BindingResult binding, Model model, HttpServletRequest request,
			RedirectAttributes attr) {
		
		var session = request.getSession();
		session.setAttribute("emp", dto);
		session.setAttribute("binding", binding);
		
		if (binding.hasErrors())
			return "redirect:/emp/delete?error";
		
		var emp = dto.getModel();
		
		mapper.delete(emp.getEmpno());
		
		return "redirect:/emp/success?delete";
	}

}

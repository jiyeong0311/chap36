package com.example.imple.salgrade.controller;

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
import com.example.imple.salgrade.mapper.SalgradeMapper;
import com.example.imple.salgrade.model.SalgradeDTO;
import com.example.standard.controller.UpdateController;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/salgrade")
@Slf4j
public class SalgradeUpdateController implements UpdateController<SalgradeDTO> {

	@Autowired
	SalgradeMapper mapper;
	
	@Override
	public void update(Model model, HttpServletRequest request) {
		var error = request.getParameter("error");
		if (Objects.isNull(error)) {
			var session = request.getSession();
			session.removeAttribute("salgrade");
			session.removeAttribute("binding");
		}
		
		var grade = request.getParameter("grade");
		if (Objects.nonNull(grade)) {
			var key = Integer.parseInt(grade);
			var salgrade = mapper.selectByGrade(key);
			model.addAttribute("salgrade", salgrade);
		}
	}

	@Override
	public String update(@Valid SalgradeDTO dto, BindingResult binding, Model model, HttpServletRequest request,
			RedirectAttributes attr) {
		
		var session = request.getSession();
		session.setAttribute("salgrade", dto);
		session.setAttribute("binding", binding);
		
		if (binding.hasErrors())
			return "redirect:/salgrade/update?error";
		
		var salgrade = dto.getModel();
		
		try {
			mapper.updateSalgrade(salgrade);
		} catch (DataIntegrityViolationException e) {
			binding.rejectValue("grade", "9999", "9999는 최대 숫자 입니다.");
			return "redirect:/salgrade/update?error";
		}
		
		return "redirect:/salgrade/success?update";
	}

}

package com.example.imple.country.controller;

import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.imple.city.mapper.CityMapper;
import com.example.imple.city.model.CityDTO;
import com.example.imple.country.mapper.CountryMapper;
import com.example.imple.country.model.CountryDTO;
import com.example.standard.controller.CreateController;
import com.example.standard.controller.DeleteController;
import com.example.standard.controller.UpdateController;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;

@Controller
@RequestMapping("/country")
public class CountryDeleteController implements DeleteController<CountryDTO> {

	@Autowired
	CountryMapper mapper;
	
	
	@Override
	public void delete(Model model, HttpServletRequest request) {
		var error = request.getParameter("error");
		if (Objects.isNull(error)) {
			var session = request.getSession();
			session.removeAttribute("country");
			session.removeAttribute("binding");
		}
		
		var code = request.getParameter("code");
		if (Objects.nonNull(code)) {
			var country = mapper.selectByCode(code);
			model.addAttribute("country", country);
		}
	}

	@Override
	public String delete(@Valid CountryDTO dto, BindingResult binding, Model model, HttpServletRequest request,
			RedirectAttributes attr) {
		
		var session = request.getSession();
		session.setAttribute("country", dto);
		session.setAttribute("binding", binding);
		
		if (binding.hasErrors()) {
			return "redirect:/country/delete?error";
		}
		
		var country = dto.getModel();
		
		mapper.delete(country.getCode());
		
		return "redirect:/country/success?delete";
	}

}

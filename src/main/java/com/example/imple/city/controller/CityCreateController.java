package com.example.imple.city.controller;

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
import com.example.standard.controller.CreateController;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;

@Controller
@RequestMapping("/city")
public class CityCreateController implements CreateController<CityDTO> {

	@Autowired
	CityMapper mapper;
	
	
	@Override
	public void create(Model model, HttpServletRequest request) {
		var error = request.getParameter("error");
		if (Objects.isNull(error)) {
			var session = request.getSession();
			session.removeAttribute("city");
			session.removeAttribute("binding");
		}
		
	}

	@Override
	public String create(@Valid CityDTO dto, BindingResult binding, Model model, HttpServletRequest request,
			RedirectAttributes attr) {
		
		var session = request.getSession();
		session.setAttribute("city", dto);
		session.setAttribute("binding", binding);
		
		var countryCode = dto.getCountryCode().trim();
		
		if (!countryCode.equals(""))
			if (countryCode.length() != 3) {
				binding.rejectValue("countryCode", "9999", "3자리로 입력하세요");
			}
		
		if (binding.hasErrors()) {
			
			return "redirect:/city/create?error";
		}
		
		var city = dto.getModel();
		
		try {
			mapper.insertCity(city);
		} catch (DataIntegrityViolationException e) {
			binding.reject("foreign", "입력한 국가코드는 존재하지 않습니다.");
			return "redirect:/city/create?error";
		}
		
		dto.setId(city.getId());
		
		return "redirect:/city/success?create";
	}

}

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
import com.example.standard.controller.DeleteController;
import com.example.standard.controller.UpdateController;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;

@Controller
@RequestMapping("/city")
public class CityDeleteController implements DeleteController<CityDTO> {

	@Autowired
	CityMapper mapper;
	
	
	@Override
	public void delete(Model model, HttpServletRequest request) {
		var error = request.getParameter("error");
		if (Objects.isNull(error)) {
			var session = request.getSession();
			session.removeAttribute("city");
			session.removeAttribute("binding");
		}
		
		var id = request.getParameter("id");
		if (Objects.nonNull(id)) {
			var key = Integer.parseInt(id);
			var city = mapper.selectById(key);
			model.addAttribute("city", city);
		}
	}

	@Override
	public String delete(@Valid CityDTO dto, BindingResult binding, Model model, HttpServletRequest request,
			RedirectAttributes attr) {
		
		var session = request.getSession();
		session.setAttribute("city", dto);
		session.setAttribute("binding", binding);
		
		if (binding.hasErrors()) {
			return "redirect:/city/delete?error";
		}
		
		var city = dto.getModel();
		
		mapper.delete(city.getId());
		
		return "redirect:/city/success?create";
	}

}

package com.example.imple.user.controller;

import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.imple.user.mapper.UserMapper;
import com.example.imple.user.model.UserDTO;
import com.example.standard.controller.UpdateController;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/user")
@Slf4j
public class UserUpdateController implements UpdateController<UserDTO> {
	
	@Autowired
	UserMapper mapper;
	
	@Override
	public void update(Model model, HttpServletRequest request) {
		log.info("GET update()...");
		var error = request.getParameter("error");
		if (Objects.isNull(error)) {
			var session = request.getSession();
			session.removeAttribute("users");
			session.removeAttribute("binding");
		}
		
		var id = request.getParameter("id");
		if (Objects.nonNull(id)) {
			var users = mapper.selectById(id);
			model.addAttribute("users", users);
		}
		
		
	}

	@Override
	@Transactional
	public String update(@Valid UserDTO dto, BindingResult binding, Model model, HttpServletRequest request,
			RedirectAttributes attr) {
		log.info("POST update()...");
		
		var session = request.getSession();
		session.setAttribute("users", dto);
		session.setAttribute("binding", binding);
		
		if (binding.hasErrors())
			return "redirect:/user/update?error";
		
		var users = dto.getModel();
		
		mapper.updateUser(users);
		
		
		return "redirect:/user/success?update";
	}
	
	
	
}

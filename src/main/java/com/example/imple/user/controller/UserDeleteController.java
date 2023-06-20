package com.example.imple.user.controller;

import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.imple.user.mapper.UserMapper;
import com.example.imple.user.model.UserDTO;
import com.example.standard.controller.DeleteController;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/user")
@Slf4j
public class UserDeleteController implements DeleteController<UserDTO>{
	
	@Autowired
	UserMapper mapper;
	
	@Override
	public void delete(Model model, HttpServletRequest request) {
		var error = request.getParameter("error");
		// 회원가입 성공시 회원가입 페이지에 작성한 내용 삭제
		if (Objects.isNull(error)) {
			var session = request.getSession();
				session.removeAttribute("users");
				session.removeAttribute("binding");
		}
		
		// 아이디 조회
		var id = request.getParameter("id");
		if (Objects.nonNull(id)) {
			var users = mapper.selectById(id);
			model.addAttribute("users", users);			
		}
		
	}

	@Override
	public String delete(@Valid UserDTO dto, BindingResult binding, Model model, HttpServletRequest request,
			RedirectAttributes attr) {

		var session = request.getSession();
		session.setAttribute("users", dto);
		session.setAttribute("binding", binding);
		
		if (binding.hasErrors())
			return "redirect:/user/delete?error";
		
		var users = dto.getModel();
		try {
			mapper.delete(users.getId());
		} catch (DataIntegrityViolationException e) {
			binding.reject("foreign", "직원이 있는 부서는 삭제할 수 없습니다.");
			return "redirect:/user/delete?error";
		}
		
		return "redirect:/user/success?delete";
	}
	
	
}

package com.example.imple.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.imple.dept.mapper.DeptMapper;
import com.example.imple.user.mapper.UserMapper;
import com.example.standard.controller.ListController;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/user")
public class UserListController implements ListController {
	
	@Autowired
	UserMapper mapper;

	@Override
	public void list(Model model, HttpServletRequest request) {
		var list = mapper.selectUsersList();
		model.addAttribute("list", list);
	}
	
}

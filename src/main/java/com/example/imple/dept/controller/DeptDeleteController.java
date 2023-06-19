package com.example.imple.dept.controller;

import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.imple.dept.mapper.DeptMapper;
import com.example.imple.dept.model.DeptDTO;
import com.example.standard.controller.DeleteController;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/dept")
@Slf4j
public class DeptDeleteController implements DeleteController<DeptDTO> {

	@Autowired
	DeptMapper mapper;
	
	@Override
	public void delete(Model model, HttpServletRequest request) {
		var error = request.getParameter("error");
		if (Objects.isNull(error)) {
			var session = request.getSession();
			session.removeAttribute("dept");
			session.removeAttribute("binding");
		}
		
		var deptno = request.getParameter("deptno");
		if (Objects.nonNull(deptno)) {
			var key = Integer.parseInt(deptno);
			var dept = mapper.selectByDeptno(key);
			model.addAttribute("dept", dept);
		}
			
		
	}

	@Override
	public String delete(@Valid DeptDTO dto, BindingResult binding, Model model, HttpServletRequest request,
			RedirectAttributes attr) {
		
		var session = request.getSession();
		session.setAttribute("dept", dto);
		session.setAttribute("binding", binding);
		
		if (binding.hasErrors())
			return "redirect:/dept/delete?error";
		
		var dept = dto.getModel();
		try {
			mapper.delete(dept.getDeptno());
		} catch (DataIntegrityViolationException e) {
			binding.reject("foreign", "직원이 있는 부서는 삭제할 수 없습니다.");
			return "redirect:/dept/delete?error";
		}

		return "redirect:/dept/success?delete";
	}

}

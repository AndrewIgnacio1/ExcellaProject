package com.excellaproject.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.excellaproject.models.Form_A;
import com.excellaproject.models.User;
import com.excellaproject.services.Form_AService;
import com.excellaproject.services.UserService;

@Controller
public class Forms_A {
	private final Form_AService form_AService;
	private final UserService userService;
	
	public Forms_A(Form_AService form_AService, UserService userService) {
		this.form_AService = form_AService;
		this.userService = userService;
	}
	
	@RequestMapping("/new_a")
    public String newForm(HttpSession session, Model model, @ModelAttribute("form_A") Form_A form_A) {
		User user = (User) session.getAttribute("user");
		model.addAttribute("user", user);
		System.out.println(user.getId());
        return "form_a";
    }
	@RequestMapping(value="/process_form_a", method=RequestMethod.POST)
    public String create(@Valid @ModelAttribute("form_A") Form_A form_A, BindingResult result, RedirectAttributes flash) {
		if (result.hasErrors()) {
			System.out.println("error!");
            return "form_a";
        } 
		else {
            form_AService.createForm(form_A);
            return "redirect:/dashboard";
    	}
    }


//	@RequestMapping("/forms_A/{id}")
//	public String showForm_A(Model model, @PathVariable("id") long id,  HttpSession session) {
//		Form_A form_A = form_AService.findForm(id);
//		User u = (User) session.getAttribute("user");
//		model.addAttribute("form_A", form_A);
//		session.setAttribute("user", u);
//		return "pending_form_a.jsp";
//	}

}

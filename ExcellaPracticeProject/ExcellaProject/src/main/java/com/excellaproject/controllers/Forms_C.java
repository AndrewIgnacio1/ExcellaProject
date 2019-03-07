package com.excellaproject.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.excellaproject.models.Form_C;
import com.excellaproject.models.User;
import com.excellaproject.services.Form_CService;
import com.excellaproject.services.UserService;

@Controller
public class Forms_C {
	private final Form_CService form_CService;
	private final UserService userService;
	
	public Forms_C(Form_CService form_CService, UserService userService) {
		this.form_CService = form_CService;
		this.userService = userService;
	}
	
	@RequestMapping("/new_c")
    public String newForm(HttpSession session, Model model, @ModelAttribute("form_C") Form_C form_C) {
		User user = (User) session.getAttribute("user");
		model.addAttribute("user", user);
		System.out.println(user.getId());
        return "form_c";
    }
	@RequestMapping(value="/process_form_c", method=RequestMethod.POST)
    public String create(@Valid @ModelAttribute("form_C") Form_C form_C, BindingResult result, RedirectAttributes flash) {
		if (result.hasErrors()) {
			System.out.println("error!");
            return "form_c";
        } 
		else {
            form_CService.createForm(form_C);
            return "redirect:/dashboard";
    	}
    }

}

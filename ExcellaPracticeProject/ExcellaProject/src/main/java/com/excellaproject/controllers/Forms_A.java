package com.excellaproject.controllers;

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
		if (user == null) {
			return "redirect:/";
		}
		System.out.println(user.getId());
        return "form_a";
    }
	
	@RequestMapping(value="/process_form_a", method=RequestMethod.POST)
    public String create(HttpSession session, Model model, @Valid @ModelAttribute("form_A") Form_A form_A, BindingResult result, RedirectAttributes flash) {
		if (result.hasErrors()) {
			System.out.println("error!");
            return "form_a";
        } 
		else {
			User user = (User) session.getAttribute("user");
			model.addAttribute("user", user);
			form_AService.createForm(form_A);
            form_A.setUser(user);
            form_AService.updateForm_A(form_A);
            return "redirect:/dashboard";
    	}
    }
	
	@RequestMapping(value="/forms/{id}/accept/a", method=RequestMethod.PUT)
	public String accept_form_a(@Valid @ModelAttribute("forms_a") Form_A form_A, BindingResult result) {
		form_AService.updateForm_level(form_A.getId(), form_A.getForm_level());
		return "redirect:/dashboard_admin";
	}
	
	@RequestMapping(value="/forms/{id}/reject/a", method=RequestMethod.DELETE)
	public String reject_form_a(@PathVariable("id") long id) {
		form_AService.deleteForm_A(id);
		return "redirect:/dashboard_admin";
	}

}

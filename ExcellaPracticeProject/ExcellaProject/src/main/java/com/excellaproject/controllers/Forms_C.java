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
		if (user == null) {
			return "redirect:/";
		}
		System.out.println(user.getId());
        return "form_c";
    }
	@RequestMapping(value="/process_form_c", method=RequestMethod.POST)
    public String create(HttpSession session, Model model, @Valid @ModelAttribute("form_C") Form_C form_C, BindingResult result, RedirectAttributes flash) {
		if (result.hasErrors()) {
			System.out.println("error!");
            return "form_c";
        } 
		else {
			User user = (User) session.getAttribute("user");
			model.addAttribute("user", user);
            form_CService.createForm(form_C);
            form_C.setUser(user);
            form_CService.updateForm_C(form_C);
            return "redirect:/dashboard";
    	}
    }
	
	@RequestMapping(value="/forms/{id}/accept/c", method=RequestMethod.PUT)
	public String accept_form_c(@Valid @ModelAttribute("forms_c") Form_C form_C, BindingResult result) {
		form_CService.updateForm_level(form_C.getId(), form_C.getForm_level());
		return "redirect:/dashboard_admin";
	}
	
	@RequestMapping(value="/forms/{id}/reject/c", method=RequestMethod.DELETE)
	public String reject_form_c(@PathVariable("id") long id) {
		form_CService.deleteForm_C(id);
		return "redirect:/dashboard_admin";
	}

}

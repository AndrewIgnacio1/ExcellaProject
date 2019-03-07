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

import com.excellaproject.models.Form_D;
import com.excellaproject.models.User;
import com.excellaproject.services.Form_DService;
import com.excellaproject.services.UserService;

@Controller
public class Forms_D {
	private final Form_DService form_DService;
	private final UserService userService;
	
	public Forms_D(Form_DService form_DService, UserService userService) {
		this.form_DService = form_DService;
		this.userService = userService;
	}
	
	@RequestMapping("/new_d")
    public String newForm(HttpSession session, Model model, @ModelAttribute("form_D") Form_D form_D) {
		User user = (User) session.getAttribute("user");
		model.addAttribute("user", user);
		if (user == null) {
			return "redirect:/";
		}
		System.out.println(user.getId());
        return "form_d";
    }
	@RequestMapping(value="/process_form_d", method=RequestMethod.POST)
    public String create(HttpSession session, Model model, @Valid @ModelAttribute("form_D") Form_D form_D, BindingResult result, RedirectAttributes flash) {
		if (result.hasErrors()) {
			System.out.println("error!");
            return "form_d";
        } 
		else {
			User user = (User) session.getAttribute("user");
			model.addAttribute("user", user);
            form_DService.createForm(form_D);
            form_D.setUser(user);
            form_DService.updateForm_D(form_D);
            return "redirect:/dashboard";
    	}
    }
	
	@RequestMapping(value="/forms/{id}/accept/d", method=RequestMethod.PUT)
	public String accept_form_d(@Valid @ModelAttribute("forms_d") Form_D form_D, BindingResult result) {
		form_DService.updateForm_level(form_D.getId(), form_D.getForm_level());
		return "redirect:/dashboard_admin";
	}
	
	@RequestMapping(value="/forms/{id}/reject/d", method=RequestMethod.DELETE)
	public String reject_form_d(@PathVariable("id") long id) {
		form_DService.deleteForm_D(id);
		return "redirect:/dashboard_admin";
	}

}

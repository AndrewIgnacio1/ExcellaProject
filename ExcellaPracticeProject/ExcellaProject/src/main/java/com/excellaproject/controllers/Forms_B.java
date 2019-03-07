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
import com.excellaproject.models.Form_B;
import com.excellaproject.models.User;
import com.excellaproject.services.Form_BService;
import com.excellaproject.services.UserService;

@Controller
public class Forms_B {
	private final Form_BService form_BService;
	private final UserService userService;
	
	public Forms_B(Form_BService form_BService, UserService userService) {
		this.form_BService = form_BService;
		this.userService = userService;
	}
	
	@RequestMapping("/new_b")
    public String newForm(HttpSession session, Model model, @ModelAttribute("form_B") Form_B form_B) {
		User user = (User) session.getAttribute("user");
		model.addAttribute("user", user);
		if (user == null) {
			return "redirect:/";
		}
		System.out.println(user.getId());
        return "form_b";
    }
	
	@RequestMapping(value="/process_form_b", method=RequestMethod.POST)
    public String create(HttpSession session, Model model, @Valid @ModelAttribute("form_B") Form_B form_B, BindingResult result, RedirectAttributes flash) {
		if (result.hasErrors()) {
			System.out.println("error!");
            return "form_b";
        } 
		else {
			User user = (User) session.getAttribute("user");
			model.addAttribute("user", user);
            form_BService.createForm(form_B);
            form_B.setUser(user);
            form_BService.updateForm_B(form_B);
            return "redirect:/dashboard";
    	}
    }
	
	@RequestMapping(value="/forms/{id}/accept/b", method=RequestMethod.PUT)
	public String accept_form_b(@Valid @ModelAttribute("forms_b") Form_B form_B, BindingResult result) {
		form_BService.updateForm_level(form_B.getId(), form_B.getForm_level());
		return "redirect:/dashboard_admin";
	}
	
	@RequestMapping(value="/forms/{id}/reject/b", method=RequestMethod.DELETE)
	public String reject_form_b(@PathVariable("id") long id) {
		form_BService.deleteForm_B(id);
		return "redirect:/dashboard_admin";
	}

}
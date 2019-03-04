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
		System.out.println(user.getId());
        return "form_b";
    }
	@RequestMapping(value="/process_form_b", method=RequestMethod.POST)
    public String create(@Valid @ModelAttribute("form_B") Form_B form_B, BindingResult result, RedirectAttributes flash) {
		if (result.hasErrors()) {
			System.out.println("error!");
            return "form_b";
        } 
		else {
            form_BService.createForm(form_B);
            return "redirect:/dashboard";
    	}
    }

}
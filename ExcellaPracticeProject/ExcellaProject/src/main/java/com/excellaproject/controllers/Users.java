package com.excellaproject.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.excellaproject.models.Form_A;
import com.excellaproject.models.Form_B;
import com.excellaproject.models.Form_C;
import com.excellaproject.models.Form_D;
import com.excellaproject.models.User;
import com.excellaproject.services.Form_AService;
import com.excellaproject.services.Form_BService;
import com.excellaproject.services.Form_CService;
import com.excellaproject.services.Form_DService;
import com.excellaproject.services.UserService;
import com.excellaproject.validators.UserValidator;

@Controller
public class Users {

	private UserValidator userValidator;
	private UserService userService;
	private Form_AService form_AService;
	private Form_BService form_BService;
	private Form_CService form_CService;
	private Form_DService form_DService;
	
	public Users(UserValidator userValidator, UserService userService, Form_AService form_AService, Form_BService form_BService, Form_CService form_CService, Form_DService form_DService) {
		this.userValidator = userValidator;
		this.userService = userService;
		this.form_AService = form_AService;
		this.form_BService = form_BService;
		this.form_CService = form_CService;
		this.form_DService = form_DService;
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("user");
		System.out.println("logging out");
		return "redirect:/";
	}
	
	@RequestMapping("/")
	public String login_page(Model model) {
		model.addAttribute("user", new User());
		return "login";
	}
	
	@RequestMapping("/register")
	public String register_page(Model model) {
		model.addAttribute("user", new User());
		return "register";
	}
	
	@PostMapping("/process_login")
	public String login(@RequestParam Map<String, String> body, HttpSession session, RedirectAttributes flash) {
		HashMap<String, Object> response = this.userValidator.authenticate(body);
		if ((boolean) response.get("valid")) {
			User user = (User) response.get("user");
			session.setAttribute("user", user);
			System.out.println(user);
			if (user.getUser_level() == 1) {
				return "redirect:/dashboard_admin";
			}
			return "redirect:/dashboard";
		}
		else {
			flash.addFlashAttribute("errors", response);
			return "redirect:/";
		}
	}
	
	@PostMapping("/process_register")
	public String register(@RequestParam Map<String, String> body, RedirectAttributes flash, HttpSession session) {
		HashMap<String, Object> response = this.userValidator.validate(body);
		
		if ((boolean) response.get("valid")) {
			User user = this.userService.createUser(body);
			System.out.println(user);
			session.setAttribute("user", user);
			System.out.println("success in registration");

			if (userService.findAllUsers().size() == 1) {
				user.setUser_level(1);
				userService.updateUser(user);
				System.out.println("admin here");
				return "redirect:/dashboard_admin";
			}
			
			else {
				user.setUser_level(9);
				userService.updateUser(user);
				System.out.println("regular user here");
				return "redirect:/dashboard";
			}
		}
		else {
			flash.addFlashAttribute("errors", response);
			System.out.println("errors in registration");
			return "redirect:/register";
		}	
	}
	
	@RequestMapping("/dashboard")
	public String dash_user_page(HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		model.addAttribute("user", user);
		Form_A form_a = (Form_A) form_AService.findUser(user.getId());
		Form_B form_b = (Form_B) form_BService.findUser(user.getId());
		Form_C form_c = (Form_C) form_CService.findUser(user.getId());
		Form_D form_d = (Form_D) form_DService.findUser(user.getId());
		model.addAttribute("form_a", form_a);
		model.addAttribute("form_b", form_b);
		model.addAttribute("form_c", form_c);
		model.addAttribute("form_d", form_d);
		return "dash_user";
	}

	@RequestMapping("/dashboard_admin")
	public String dash_admin_page(HttpSession session, Model model) {
		List<User> users = userService.findAllUsers();
		model.addAttribute("users", users);
		User user = (User) session.getAttribute("user");
		model.addAttribute("user", user);
		return "dash_admin";
	}
	
}

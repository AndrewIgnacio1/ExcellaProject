package com.excellaproject.controllers;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.excellaproject.models.User;
import com.excellaproject.services.UserService;
import com.excellaproject.validators.UserValidator;

@Controller
public class Users {

	private UserValidator userValidator;
	private UserService userService;
	
	public Users(UserValidator userValidator, UserService userService) {
		this.userValidator = userValidator;
		this.userService = userService;
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
		return "dash_user";
	}

	@RequestMapping("/dashboard_admin")
	public String dash_admin_page(HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		model.addAttribute("user", user);
		return "dash_admin";
	}
	
}

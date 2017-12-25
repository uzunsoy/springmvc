package com.uzunsoy.mvnproject;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.uzunsoy.models.User;
import com.uzunsoy.service.UserService;

@Controller
@Scope(scopeName = "session")
public class UsersController {

	@Autowired
	UserService userService;

	@RequestMapping(value = "/users", method = RequestMethod.GET)
	public String users(Locale locale, Model model) {

		User user = new User();
		user.setAd("Ali");
		user.setSoyad("Bilir");

		User user2 = new User();
		user2.setAd("Pelin");
		user2.setSoyad("Bilir");

		List<User> users = new ArrayList<User>();
		users.add(user);
		users.add(user2);

		model.addAttribute("mesaj", "Merhaba Dünya");
		model.addAttribute("user", user);
		model.addAttribute("users", users);
		return "adminpages/users";
	}

	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public String addUser(@Valid @ModelAttribute("user") User user, 
			BindingResult bindingResult, ModelMap model) {

		if (bindingResult.hasErrors()) {
			return "error";
		}
		userService.create(user);
		return "redirect:/users";
	}

}

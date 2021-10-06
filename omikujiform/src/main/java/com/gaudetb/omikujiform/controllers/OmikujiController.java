package com.gaudetb.omikujiform.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/omikuji")
public class OmikujiController {
	
	@RequestMapping("")
	public String index() {
		
		return "index.jsp";
	}
	
	@RequestMapping("/submit") 
	public String login(
			@RequestParam(value="number") int number,
			@RequestParam(value="city") String city,
			@RequestParam(value="person") String person,
			@RequestParam(value="hobby") String hobby,
			@RequestParam(value="livingThing") String livingThing,
			@RequestParam(value="somethingNice") String somethingNice,
			HttpSession session) {
		session.setAttribute("number", number);
		session.setAttribute("city", city);
		session.setAttribute("person", person);
		session.setAttribute("hobby", hobby);
		session.setAttribute("livingThing", livingThing);
		session.setAttribute("somethingNice", somethingNice);
		
		return "redirect:/omikuji/show";
	}
	
	@RequestMapping("/show")
	public String show(HttpSession session, Model model) {
		model.addAttribute(session.getAttribute("number"));
		model.addAttribute(session.getAttribute("city"));
		model.addAttribute(session.getAttribute("person"));
		model.addAttribute(session.getAttribute("hobby"));
		model.addAttribute(session.getAttribute("livingThing"));
		model.addAttribute(session.getAttribute("somethingNice"));
		
		return "show.jsp";
	}

}

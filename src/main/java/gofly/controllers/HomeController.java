package gofly.controllers;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import gofly.dtos.UserRegistrationDto;
import gofly.entities.SamplePerson;
import gofly.entities.User;

@Controller
public class HomeController {
	
	@Autowired
	HibernateTemplate hibernateTemplate;
	
	@RequestMapping("/home")
	public String home(HttpSession session) {
		System.out.println("real path : " + session.getServletContext().getRealPath("/"));
		System.out.println("home executed  :)");
		return "home";
	}
	
	@RequestMapping("/register")
	public String registration(@ModelAttribute("dto") UserRegistrationDto dto) {
		System.out.println("registration executed :)");
		return "register";
	}
	

	@Transactional
	@RequestMapping("/registerme")
	public String registerationProcess(@Valid @ModelAttribute("dto") UserRegistrationDto dto, BindingResult result) {
		System.out.println("form-request-fired");
		
		if(result.hasErrors()) {
			for(ObjectError err : result.getAllErrors()) {
				System.out.println(err);
			}
			return "register";
		} 
		
		User newUser = new User();
		UserRegistrationDto.createUserFromDto(dto, newUser);
		try {
			hibernateTemplate.save(newUser);
		} catch (Exception e) {
			System.out.println("/n/n +++++++++++++++++++++message starts from here ++++++++++++++++++++++++++++++++");
			System.out.println("not saved : " + e.getMessage());
			System.out.println(e.getClass());
		}
		
		return "registration-success";
	}
	
	
	@RequestMapping("book-a-flight")
	public String bookingPage() {
		System.out.println("bookingPage executed :)");
		return "booking-page";
	}
	
	
	@RequestMapping("profile")
	public String profilePage() {
		
		System.out.println("profilePage executed :)");
		return "profile";
	}
	
	
	
	// temporary method to be deleted
	@RequestMapping("makePerson")
	public String personform() {
		System.out.println("in person form");
		return "persontestform";
	}
	
	
	// temporary method to be deleted
	@Transactional
	@ResponseBody
	@RequestMapping("savePerson")
	public String savePerson(@ModelAttribute("person") SamplePerson person) {
		System.out.println("saving person method");
		
		
		hibernateTemplate.save(person);
		
		System.out.println(person);
		return "person saved successfully";
	}
}

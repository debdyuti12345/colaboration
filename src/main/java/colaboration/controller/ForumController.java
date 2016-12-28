package colaboration.controller;

import java.security.Principal;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import colaboration.model.*;
import colaboration.service.impl.ForumServiceImpl;
import colaboration.service.impl.UserServiceImpl;

@Controller
public class ForumController {
	@Autowired
    private ForumServiceImpl fs;
	
	 private UserServiceImpl us;
	 @Autowired
    public ForumController(ForumServiceImpl fs, UserServiceImpl us) {
		super();
		this.fs = fs;
		this.us = us;
	}
	public ForumController() {
		super();
	}





	/*@RequestMapping(value = "/openblog", method = RequestMethod.GET)
    public String listPersons(Model model) {
        model.addAttribute("user", new User());
      //  model.addAttribute("listfromtable", this.us.listUsers());
        return "myblog";
    }*/
	
	@RequestMapping(value = "/user/openforum", method = RequestMethod.GET)
	public ModelAndView newForum(Model m) {

		m.addAttribute("forum", new Forum());
		List<Forum> listForums = fs.listForums();
		String json = new Gson().toJson(listForums);
		ModelAndView model = new ModelAndView("myforum");
		model.addObject("forums", json);
		return model;
	   }   
	/*public String student(Model model) {

	    model.addAttribute("forum",new Forum());
	    model.addAttribute("user", new User());
		
	      return "myforum";*/
	   
	

	@RequestMapping(value= "/user/openforum/addforum", method = RequestMethod.POST)
	public String addProduct(@Valid @ModelAttribute("forum") Forum frm, Principal p)
	{  
		
		frm.setUser(p.getName());
		frm.setDate(new Date());
		fs.addForum(frm);
		
		
			return "redirect:/user/openforum";
	}
	@RequestMapping("/forumDetails")
    public String showBlogDetails(Model model,User user, Principal p){
		User users = us.getUserByusername(p.getName());
		model.addAttribute("user", users);
        return "forumDetails";
    }


	
}

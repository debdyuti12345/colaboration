package colaboration.controller;

import java.security.Principal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import colaboration.model.*;
import colaboration.model.User;
import colaboration.service.impl.BlogServiceImpl;
import colaboration.service.impl.UserServiceImpl;

@Controller
public class BlogController {
	
	//private static final Date YOUR_DATE = null;
	@Autowired
    private BlogServiceImpl bs;
	
    private UserServiceImpl us;
	@Autowired
	public BlogController(BlogServiceImpl bs, UserServiceImpl us) {
		
		this.bs = bs;
		this.us = us;
	}
	

	
	public BlogController() {
		super();
	}
	

	/*@RequestMapping(value = "/openblog", method = RequestMethod.GET)
    public String listPersons(Model model) {
        model.addAttribute("user", new User());
      //  model.addAttribute("listfromtable", this.us.listUsers());
        return "myblog";
    }*/
	
	@RequestMapping(value = "/user/openblog", method = RequestMethod.GET)
	   public ModelAndView newBlog(Model m) {

		m.addAttribute("blog", new Blog());
		List<Blog> listBlogs = bs.listBlogs();
		String json = new Gson().toJson(listBlogs);
		ModelAndView model = new ModelAndView("myblog");
		model.addObject("blogs", json);
		return model;
	   }


	@RequestMapping(value= "/user/openblog/addblog", method = RequestMethod.POST)
	public String addBlog(@ModelAttribute("blog") Blog blog, Principal p)
	{
		/*User user = us.getUserByusername(p.getName());
		blog.setU_name(user.getUsername());
		long millis=System.currentTimeMillis();  
		java.util.Date date=new java.util.Date(millis); 
		
		blog.setTime(date);
	
		
		bs.addBlog(blog);*/
		blog.setUser(p.getName());
		blog.setDate(new Date());
		bs.addBlog(blog);
		
		
			return "redirect:/user/openblog";
	}
	
/*	@RequestMapping("/blogDetails")
    public String showBlogDetails(Model model,User user, Principal p){
		User users = us.getUserByusername(p.getName());
		model.addAttribute("user", users);
        return "blogDetails";
    }*/
	@RequestMapping("/blogDetails")
    public String showBlogDetails(Model model,User user, Principal p){
		User users = us.getUserByusername(p.getName());
		model.addAttribute("user", users);
        return "blogDetails";
    }
	
	
}

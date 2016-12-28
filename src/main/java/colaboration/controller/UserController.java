package colaboration.controller;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.Paths;
import java.security.Principal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.swing.plaf.basic.BasicInternalFrameTitlePane.SystemMenuBar;
import javax.validation.Valid;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Example;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.nio.file.Files;
import java.nio.file.Path;

import com.google.gson.Gson;
import colaboration.model.*;
import colaboration.service.impl.BlogServiceImpl;
import colaboration.service.impl.ForumServiceImpl;
import colaboration.service.impl.UserServiceImpl;


@Controller
public class UserController {
	private Path path;
	@Autowired
    private JavaMailSender mailSender;
	
	private UserServiceImpl us;
	
	private BlogServiceImpl bs;
	
	private ForumServiceImpl fs;
	
	@Autowired
	public UserController(UserServiceImpl us, BlogServiceImpl bs, ForumServiceImpl fs) {
		super();
		this.us = us;
		this.bs = bs;
		this.fs = fs;
	}

	@RequestMapping(value = {"/register","inregister"}, method = RequestMethod.GET)
    public String listPersons(Model model) {
        model.addAttribute("user", new User());
      //  model.addAttribute("listfromtable", this.us.listUsers());
        return "register";
    }
	
	

	@RequestMapping(value = "/register/add",method=RequestMethod.POST)
	public String addUser(Model model,@Valid @ModelAttribute("user") User u, BindingResult result, HttpServletRequest request) {
		System.out.println(u.getUsername());
		u.setEnabled(true);
		u.setRole("ROLE_USER");
		//us.addUser(u);
		String filename=null;
		 byte[] bytes;
		 if(!u.getImage().isEmpty())
		{
		     
		    try
		    {
		      bytes=u.getImage().getBytes();
		      us.addUser(u);
		        System.out.println("Data Inserted");
		        		   String path=request.getSession().getServletContext().getRealPath("/WEB-INF/resources/images/"+u.getUserId()+".jpg");
		                   System.out.println("Path = "+path);
		                   System.out.println("File name = "+u.getImage().getOriginalFilename());
		                   File f=new File(path);
		                   BufferedOutputStream bs=new BufferedOutputStream(new FileOutputStream(f));
		                   bs.write(bytes);
		                   bs.close();
		                   System.out.println("Image uploaded");
		    }
		            catch(Exception ex)
		    {
		        System.out.println(ex.getMessage());
		    }
		}
		 if (result.hasErrors())
		 {
			
		       return "registersuccess";

		 }
		 else
		 {

		       if(u.getUserId() == 0){
		this.us.addUser(u);
		 }
		}

		// takes input from e-mail form
        String recipientAddress = u.getEmail();
        String fname=u.getName();
        String pwd=u.getPassword();
        String subject ="Welcome!! NIIT Portal " ;
        String message = "We are happy to see you with us at NIIT Employees Portal. Your username="+u.getUsername()+" and password is: "+pwd+" Thank You!!";
        String finalmessage="Hi "+fname+", "+" "+message+"!!! "+"All the best";
         
        // prints debug info
        System.out.println("To: " + recipientAddress);
        System.out.println("Subject: " + subject);
        System.out.println("Message: " + finalmessage);
         
        // creates a simple e-mail object
        SimpleMailMessage email = new SimpleMailMessage();
        email.setTo(recipientAddress);
        email.setSubject(subject);
        email.setText(finalmessage);
         
        // sends the e-mail
        mailSender.send(email);
		if(u.getUserId() == 0){
            //new person, add it
            this.us.addUser(u);
        }else{
            //existing person, call update
            this.us.updateUser(u);
        }
         
        return "registersuccess";
    }
		
	@RequestMapping(value = "/admin/listuser", method = RequestMethod.GET)
	public ModelAndView newBlog(Model m) {

		m.addAttribute("user", new User());
		List<User> listUsers = us.listUsers();
		String json = new Gson().toJson(listUsers);
		ModelAndView model = new ModelAndView("listuser");
		model.addObject("users", json);
		return model;
	    
	}
	@RequestMapping(value = "/admin/listblog", method = RequestMethod.GET)
	public ModelAndView listBlogs(Model m) {
		m.addAttribute("blog", new Blog());
		List<Blog> listBlogs = bs.listBlogs();
		String json = new Gson().toJson(listBlogs);
		ModelAndView model = new ModelAndView("blogList");
		model.addObject("blogs", json);
		return model;
	    
	}
	
	@RequestMapping(value = "/admin/listforum", method = RequestMethod.GET)
	public ModelAndView listForum(Model m) {
		m.addAttribute("forum", new Forum());
		List<Forum> listForums = fs.listForums();
		String json = new Gson().toJson(listForums);
		ModelAndView model = new ModelAndView("forumList");
		model.addObject("forums", json);
		return model;
	    
	}
	
	@RequestMapping("/user")
	public String loadUserPage(Model model, User user, Principal p)
	{	
   
		User users = us.getUserByusername(p.getName());
		model.addAttribute("user", users);
		//model.addAttribute("listfromtable", this.us.detailsUser();
		return "userprofile";
	}
}





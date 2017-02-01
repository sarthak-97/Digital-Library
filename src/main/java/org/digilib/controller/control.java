package org.digilib.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.digilib.models.registration;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.api.client.auth.openidconnect.IdToken.Payload;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken;

@Controller
public class control {
	@Autowired
	private SessionFactory sessionFactory;
	 registration reg;
	 String avatar;

	@RequestMapping(value = "/logins", method = RequestMethod.GET)
	public ModelAndView adminloginverify(HttpSession httpSession) {
		  ModelAndView model = new ModelAndView("login");
		
		return model;
	}
	
	
	@RequestMapping(value = "/loginverify", method = RequestMethod.POST)
	public ModelAndView loginverify(HttpSession httpSession , @RequestParam Map<String,String> req) {
		ModelAndView model;
		
		

        try {
        	String auth_token= req.get("auth_token");
        	 GoogleIdToken.Payload payLoad = IdTokenVerifierAndParser.getPayload(auth_token);
            String name = (String) payLoad.get("name");
            String email = payLoad.getEmail();
           avatar= (String) payLoad.get("picture");
            System.out.println("User name: " + name);
            System.out.println("User email: " + email);
            System.out.println("avatar" + avatar);
         
            Session session =	sessionFactory.openSession();
  	         session.beginTransaction();
  	       Query queryResult = session.createQuery("from registration");
	       java.util.List allUsers;
	       String em,na,a,b,c;
	       
	       allUsers = queryResult.list();
	       int f;
	       f=0;
	       for (int i = 0; i < allUsers.size(); i++) {
	    	   registration user = (registration) allUsers.get(i);
	        em=user.getEmail();
	        na=user.getName();
	       
	        if(email.equals(em) ){
	        
	           	 f=1;
	         
	         break; 
	         }
	        }
	         
	           if(f!=1){
	        	   
	        	   
	        	   registration user= new registration();  
	      user.setName(name);
	      user.setEmail(email);
	      user.setAvatar(avatar);
	      session.save(user);
	      session.getTransaction().commit();
	      session.close();
	      user=null;
	       System.out.println(name);
	     model=new ModelAndView("login");
         model.addObject("avatar",avatar);
	}
	          
				      
	        		   
	        	   
	        	   else{
	        	   System.out.println("duplicate");
	        	   model= new ModelAndView("login");
	        	   model.addObject("avatar",avatar);
	         
	           }
	           
  	      
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    
		return model;
	}
	
	
	@RequestMapping(value = "/search1", method = RequestMethod.POST)
	public ModelAndView search(HttpSession httpSession , @RequestParam Map<String,String> req) {
		 
		String genre= req.get("genre");
		String bk_name= req.get("bk_name");
		System.out.println(genre);
		System.out.println(bk_name);
		return null;
	}
	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public ModelAndView youtube(HttpSession httpSession, @RequestParam Map<String,String> req) {
		  ModelAndView model = new ModelAndView("search");
		  String src= req.get("src");
		     model.addObject("src",src);
		     model.addObject("avatar",avatar);
		     
		return model;
	}
	
}

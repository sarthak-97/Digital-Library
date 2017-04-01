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
/**
 * 
 * @author sarthak-pc
 * main controller for all controlls
 */

@Controller
public class control {
	@Autowired
	private SessionFactory sessionFactory;
	
	 String avatar;
	 @RequestMapping(value = "/", method = RequestMethod.GET)
		public ModelAndView a() {
			  ModelAndView model = new ModelAndView("index");
			
			     
			  return model;
	 }
	 
	 /**
	  * controller for login through google
	  * @param httpSession
	  * @return
	  */

	@RequestMapping(value = "/logins", method = RequestMethod.GET)
	public ModelAndView adminloginverify(HttpSession httpSession) {
		ModelAndView model;
		if(httpSession.getAttribute("user_email")!=null){
		 model = new ModelAndView("login");
		}
		else
		{
			model=new ModelAndView("interceptor");
			model.addObject("invalid", "login first");
		}
		return model;
	}
   
	/**
	 * controller for login verify
	 * @param httpSession
	 * @param req
	 * @return
	 */
	
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
             		registration reg=new registration();
             			
             			if(session.get(registration.class, email) == null){
	    	                   httpSession.setAttribute("user_email", email);
	    	                   httpSession.setAttribute("user_name", name);
             					
	    	                   
	    	                	reg.setEmail(email);
             					reg.setAvatar(avatar);
             					reg.setName(name);
             					reg.setType("user");
  	    	       				session.save(reg);
  	    	       				session.getTransaction().commit();
  	    	       				session.close();
  	    	       				System.out.println(name);
  	    	       				
  	    	       				model=new ModelAndView("login");
  	    	       				model.addObject("avatar",avatar);
                        	}
	          
	        	   else{
	        		   
	        		   System.out.println("duplicate");
	        		   httpSession.setAttribute("user_email", email);
	        		   model= new ModelAndView("login");
	        		   model.addObject("avatar",avatar);
	         
	        	   		}
	      
              } 
        
        				catch (Exception e) {
        					
        					throw new RuntimeException(e);
        					}
    
		return model;
	}
	
	
	
	
	
  /**
   * controller for user query of vedios
   * @param httpSession
   * @param req
   * @return
   */
	
	
	@RequestMapping(value = "/searchvedio", method = RequestMethod.POST)
	public ModelAndView youtube(HttpSession httpSession, @RequestParam Map<String,String> req) {
		  ModelAndView model;
		  		
		  			if(httpSession.getAttribute("user_email")!=null){
		  					model = new ModelAndView("search");
		  					String src= req.get("src");
		  					model.addObject("src",src);
		  					model.addObject("avatar",avatar);
		  			}	
    
		  			else{
		  					model =new ModelAndView("interceptor");
		  					model.addObject("invalid","kindly login fisrt");
			
		  				}
		  			
		  		return model;
	}
	
	/**
	 * admin verify controll
	 * @param httpSession
	 * @param req
	 * @return
	 */
	@RequestMapping(value ="/adminverify", method = RequestMethod.POST)
	public ModelAndView adminverify(HttpSession httpSession, @RequestParam Map<String,String> req) {
		  ModelAndView model ;
		  String email= req.get("email");
	
		  	Session session =sessionFactory.openSession();
		  	session.beginTransaction(); 
			registration reg = (registration)session.get(registration.class,email);
		  	String id=reg.getEmail();			
			String type=reg.getType();
					 
			   			if(email.equals(id) && type.equals("admin")){
			   				
			   				model	= new ModelAndView("adminpannel");
			   				
			   			  }
					    
			   			else{
			   				model=new ModelAndView("interceptor");
			   				model.addObject("invalid","your are not admin");
			   			    }
		     
		     
		return model;
	
}
	/**
	 * controller for admin page request
	 * @param httpSession
	 * @param req
	 * @return
	 */
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView admin(HttpSession httpSession) {
		  ModelAndView model = new ModelAndView("admin");
		
		     
		  return model;
	
}
}

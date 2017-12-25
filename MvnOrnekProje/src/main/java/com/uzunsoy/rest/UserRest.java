package com.uzunsoy.rest;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.uzunsoy.models.User;
import com.uzunsoy.service.UserService;

@RestController
@RequestMapping("/rest/user")
public class UserRest {

	@Autowired
	UserService userService;
	
	@RequestMapping(value="/all", method= RequestMethod.GET)
	public ResponseEntity<ArrayList<User>> allUsers(){
		
		
		ArrayList<User> users = userService.allUsers();
		
		return new ResponseEntity<ArrayList<User>>(users, HttpStatus.OK); 
		 
	}
	
	@RequestMapping(value="/{id}", method= RequestMethod.GET)
	public ResponseEntity<User> users(@PathVariable("id") Long id){
		
		
		User user = userService.read(id);
						
		return new ResponseEntity<User>(user, HttpStatus.OK); 
		 
	}
	
}

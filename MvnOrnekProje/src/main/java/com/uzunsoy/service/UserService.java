package com.uzunsoy.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uzunsoy.dao.UserDao;
import com.uzunsoy.models.User;

@Service("userService")
@Transactional
public class UserService {

	@Autowired
	UserDao userDao;
 
	public void create(User varlik) {
		userDao.create(varlik);
	}
 
	public User read(Long id) {
		// TODO Auto-generated method stub
		return userDao.read(id);
	}
 
	public void update(User varlik) {
		// TODO Auto-generated method stub
		userDao.update(varlik);
	}
 
	public void delete(User varlik) {
		// TODO Auto-generated method stub
		userDao.delete(varlik);
	}

	public ArrayList<User> allUsers(){
		return userDao.allUsers();
	}
	
	
}

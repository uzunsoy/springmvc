package com.uzunsoy.dao;

import java.util.ArrayList;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.uzunsoy.models.User;

@Repository
public class UserDao implements CRUDDao<User> {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public void create(User varlik) {
		sessionFactory.getCurrentSession().save(varlik);
	}

	@Override
	public User read(Long id) {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().get(User.class, id);
	}

	@Override
	public void update(User varlik) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(varlik);
	}

	@Override
	public void delete(User varlik) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(varlik);
	}

	public ArrayList<User> allUsers() {
		
		return (ArrayList<User>) sessionFactory.getCurrentSession().createQuery("from User").getResultList();

	}

}

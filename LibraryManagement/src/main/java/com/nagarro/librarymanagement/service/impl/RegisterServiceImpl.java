package com.nagarro.librarymanagement.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nagarro.librarymanagement.dao.UserDao;
import com.nagarro.librarymanagement.model.User;
import com.nagarro.librarymanagement.service.RegisterService;

@Service
public class RegisterServiceImpl implements RegisterService{

	@Autowired
	UserDao userDao;
	
	@Override
	public User isValidUserName(String userName) {
		// TODO Auto-generated method stub
		return userDao.findById(userName).orElse(null);
	}

	@Override
	public void registerUser(String userName, String passwd) {
		userDao.save(new User(userName,passwd));
	}
}

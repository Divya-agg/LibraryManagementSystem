package com.nagarro.librarymanagement.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nagarro.librarymanagement.constant.Constant;
import com.nagarro.librarymanagement.dao.UserDao;
import com.nagarro.librarymanagement.model.User;
import com.nagarro.librarymanagement.service.HashService;
import com.nagarro.librarymanagement.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService{

	@Autowired
	UserDao userDao;
	
	@Autowired
	HashService hashService;
	

	@Override
	public boolean isValidLoginDetails(String userName, String passwd) {
		// TODO Auto-generated method stub
		User user = userDao.findById(userName).orElse(null);
		System.out.println("isValidLoginDetails");
		if(null != user) {
			return user.getPasswd().equals(hashService.getHash(passwd, Constant.salt));
		}
		
		return false;
	}
	
}

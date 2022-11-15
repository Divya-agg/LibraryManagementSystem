package com.nagarro.librarymanagement.service;

import com.nagarro.librarymanagement.model.User;

public interface RegisterService {

	User isValidUserName(String userName);
	void registerUser(String userName, String passwd);
}

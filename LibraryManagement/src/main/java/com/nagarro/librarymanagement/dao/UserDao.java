package com.nagarro.librarymanagement.dao;

import org.springframework.data.repository.CrudRepository;

import com.nagarro.librarymanagement.model.User;

public interface UserDao extends CrudRepository<User, String>{

}

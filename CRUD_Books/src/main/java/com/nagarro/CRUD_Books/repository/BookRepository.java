package com.nagarro.CRUD_Books.repository;

import org.springframework.data.repository.CrudRepository;

import com.nagarro.CRUD_Books.model.Books;

public interface BookRepository extends CrudRepository<Books,Integer>{

}

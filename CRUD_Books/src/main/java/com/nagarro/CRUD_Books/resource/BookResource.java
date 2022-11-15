package com.nagarro.CRUD_Books.resource;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.nagarro.CRUD_Books.model.Books;
import com.nagarro.CRUD_Books.repository.BookRepository;


@RestController
@CrossOrigin
public class BookResource {
 
	@Autowired
	BookRepository repo; 
	
	
	@GetMapping("Books")
	public List<Books> getBooks() {
		List<Books> bookList;
		
		System.out.println("getBooks");
	
		bookList = (List<Books>) repo.findAll();
		
		return bookList;
	}
	
	@PostMapping("Add")
	public void add(@RequestBody Books book) {
		System.out.println("Add" + book);
		repo.save(book);
	}
	
	@GetMapping("Find/{id}")
	public Optional<Books> Search(@PathVariable Integer id) {
		System.out.println("Find "+id);
		return repo.findById(id);
	}
	
	@PutMapping("Update")
	public void update(@RequestBody Books book) {
		
		System.out.println("Update" + book);
		Books books = repo.findById(book.getCode()).orElse(null);
		
		if(null != books) {
			repo.save(books);
		}
	}
	
	@DeleteMapping("Delete/{id}")
	public void delete(@PathVariable Integer id) {
		repo.deleteById(id);
	}
	

}

package com.nagarro.librarymanagement.service;

public interface HashService {
	String getHash(String passwordToHash, byte[] salt);
}

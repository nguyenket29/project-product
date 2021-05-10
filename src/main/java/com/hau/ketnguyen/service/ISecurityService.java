package com.hau.ketnguyen.service;

public interface ISecurityService {
	String findSignedInUsername();
	void autoSignin(String username,String password);
}

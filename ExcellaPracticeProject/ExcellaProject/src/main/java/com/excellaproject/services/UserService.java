package com.excellaproject.services;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.excellaproject.models.User;
import com.excellaproject.repositories.UserRepository;

@Service
public class UserService {

	private UserRepository userRepository;

	public UserService(UserRepository userRepository) {
		this.userRepository = userRepository;
	}

	public User createUser(Map<String, String> body) {
		User user = new User(body);
		this.userRepository.save(user);
		return user;
	}

	public List<User> findAllUsers() {
		return (List<User>) userRepository.findAll();
	}
	
	public Optional<User> findById(Integer id) {
		return (Optional<User>) userRepository.findById(id);
	}
	
	public User findByEmail(String email) {
		return this.userRepository.findByEmail(email);
	}
	
//	<<---------------Update--------------->>
	
	public User updateUser(User user) {
		return userRepository.save(user);
	}
	
}

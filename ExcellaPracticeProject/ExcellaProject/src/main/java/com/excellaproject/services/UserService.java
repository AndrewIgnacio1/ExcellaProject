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
	
	public User findById(Integer id) {
		Optional<User> optionalUser = userRepository.findById(id);
		if(optionalUser.isPresent()) {
			return optionalUser.get();
		}
		else {
			return null;
		}
	}
	
	public User findByEmail(String email) {
		return this.userRepository.findByEmail(email);
	}
	
//	<<---------------Update--------------->>
	
	public User updateUser(User user) {
		return userRepository.save(user);
	}
	
	public User promoteUser(Integer id, Integer user_level) {
    	Optional<User> optionalUser = userRepository.findById(id); 
         if(optionalUser.isPresent()) {
        	 User user = optionalUser.get();
        	 user.setUser_level(user_level);
             return userRepository.save(user);
         } else {
             return null;
         }
    }
	
}

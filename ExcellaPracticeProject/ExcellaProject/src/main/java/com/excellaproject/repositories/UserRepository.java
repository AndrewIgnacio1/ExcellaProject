package com.excellaproject.repositories;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.excellaproject.models.User;

public interface UserRepository extends CrudRepository<User, Long>{
	
	public User findByEmail(String email);

	public Optional<User> findById(Integer id);
	
}

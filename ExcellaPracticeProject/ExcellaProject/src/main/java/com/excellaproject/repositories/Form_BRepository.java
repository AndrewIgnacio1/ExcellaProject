package com.excellaproject.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.excellaproject.models.Form_B;

public interface Form_BRepository extends CrudRepository <Form_B, Integer> {
	List<Form_B> findAll();
	
	Optional<Form_B> findByUser_id(int id);
	
	@Query(value="SELECT * from forms_b WHERE user_id = ?1 AND form_level = 0", nativeQuery=true)
    List<Form_B> findRejectedForms(int id);
	
	@Query(value="SELECT * from forms_b WHERE user_id = ?1 AND form_level = 1", nativeQuery=true)
    List<Form_B> findPendingForms(int id);
    
    @Query(value="SELECT * from forms_b WHERE user_id = ?1 AND form_level = 2", nativeQuery=true)
    List<Form_B> findCompleteForms(int id);
}

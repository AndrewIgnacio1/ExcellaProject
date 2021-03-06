package com.excellaproject.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.excellaproject.models.Form_D;

public interface Form_DRepository extends CrudRepository <Form_D, Integer> {
	List<Form_D> findAll();
	
	Optional<Form_D> findByUser_id(int id);
	
	@Query(value="SELECT * from forms_d WHERE user_id = ?1 AND form_level = 0", nativeQuery=true)
    List<Form_D> findRejectedForms(int id);
	
	@Query(value="SELECT * from forms_d WHERE user_id = ?1 AND form_level = 1", nativeQuery=true)
    List<Form_D> findPendingForms(int id);
    
    @Query(value="SELECT * from forms_d WHERE user_id = ?1 AND form_level = 2", nativeQuery=true)
    List<Form_D> findCompleteForms(int id);
}

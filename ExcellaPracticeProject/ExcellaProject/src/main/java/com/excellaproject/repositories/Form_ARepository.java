package com.excellaproject.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.excellaproject.models.Form_A;

public interface Form_ARepository extends CrudRepository <Form_A, Long> {
	List<Form_A> findAll();
	
	@Query(value="SELECT * from forms_a WHERE user_id = ?1 AND form_level = 0", nativeQuery=true)
    List<Form_A> findIncompleteForms(long id);
	
	@Query(value="SELECT * from tasks WHERE user_id = ?1 AND form_level = 1", nativeQuery=true)
    List<Form_A> findPendingForms(long id);
    
    @Query(value="SELECT * from tasks WHERE user_id = ?1 AND form_level = 2", nativeQuery=true)
    List<Form_A> findCompleteForms(long id);
}

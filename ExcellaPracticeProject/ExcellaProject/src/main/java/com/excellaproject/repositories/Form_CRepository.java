package com.excellaproject.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.excellaproject.models.Form_C;

public interface Form_CRepository extends CrudRepository <Form_C, Long> {
	List<Form_C> findAll();
	
	@Query(value="SELECT * from forms_c WHERE user_id = ?1 AND form_level = 0", nativeQuery=true)
    List<Form_C> findRejectedForms(long id);
	
	@Query(value="SELECT * from forms_c WHERE user_id = ?1 AND form_level = 1", nativeQuery=true)
    List<Form_C> findPendingForms(long id);
    
    @Query(value="SELECT * from forms_c WHERE user_id = ?1 AND form_level = 2", nativeQuery=true)
    List<Form_C> findCompleteForms(long id);
}


package com.excellaproject.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.excellaproject.models.Form_A;
import com.excellaproject.models.User;
import com.excellaproject.repositories.Form_ARepository;

@Service
public class Form_AService {
private final Form_ARepository form_ARepository;

	public Form_AService(Form_ARepository form_ARepository) {
		this.form_ARepository = form_ARepository;
	}
	
	public List<Form_A> allForms(){
		return form_ARepository.findAll();
	}
	
	public List<Form_A> formRejected(Long id){
		return form_ARepository.findRejectedForms(id);
	}
	
	public List<Form_A> formPending(Long id){
		return form_ARepository.findPendingForms(id);
	}
	
	public List<Form_A> formComplete(Long id){
		return form_ARepository.findCompleteForms(id);
	}
	
	public Form_A createForm(Form_A a) {
		return form_ARepository.save(a);
	}
	
	public Form_A findForm(long id) {
		Optional<Form_A> optionalForm_A = form_ARepository.findById(id);
		if(optionalForm_A.isPresent()) {
			return optionalForm_A.get();
		}
		else {
			return null;
		}
	}
	
	public Form_A findUser(long id) {
		Optional<Form_A> optionalForm_A = form_ARepository.findByUser_id(id);
		if(optionalForm_A.isPresent()) {
			return optionalForm_A.get();
		}
		else {
			return null;
		}
	}
	
	public Form_A updateForm(long id, int form_level) {
		Optional<Form_A> optionalForm_A = form_ARepository.findById(id); 
        if(optionalForm_A.isPresent()) {
       	 Form_A form_A = optionalForm_A.get();
       	 form_A.setForm_level(form_level);
            return form_ARepository.save(form_A);
        } else {
            return null;
        }
	}
	
	public void addForm_AToUser(Form_A a, User u) {
		a.setUser(u);
		this.form_ARepository.save(a);
	}
}

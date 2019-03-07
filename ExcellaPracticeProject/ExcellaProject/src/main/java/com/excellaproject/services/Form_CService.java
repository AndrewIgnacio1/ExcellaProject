package com.excellaproject.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.excellaproject.models.Form_C;
import com.excellaproject.models.User;
import com.excellaproject.repositories.Form_CRepository;

@Service
public class Form_CService {
	private final Form_CRepository form_CRepository;

	public Form_CService(Form_CRepository form_CRepository) {
		this.form_CRepository = form_CRepository;
	}
	
	public List<Form_C> allForms(){
		return form_CRepository.findAll();
	}
	
	public List<Form_C> formRejected(Integer id){
		return form_CRepository.findRejectedForms(id);
	}
	
	public List<Form_C> formPending(Integer id){
		return form_CRepository.findPendingForms(id);
	}
	
	public List<Form_C> formComplete(Integer id){
		return form_CRepository.findCompleteForms(id);
	}
	
	public Form_C createForm(Form_C c) {
		return form_CRepository.save(c);
	}
	
	public Form_C findForm(int id) {
		Optional<Form_C> optionalForm_C = form_CRepository.findById(id);
		if(optionalForm_C.isPresent()) {
			return optionalForm_C.get();
		}
		else {
			return null;
		}
	}
	
	public Form_C findUser(int id) {
		Optional<Form_C> optionalForm_C = form_CRepository.findByUser_id(id);
		if(optionalForm_C.isPresent()) {
			return optionalForm_C.get();
		}
		else {
			return null;
		}
	}
	
	public Form_C updateForm(int id, int form_level) {
		Optional<Form_C> optionalForm_C = form_CRepository.findById(id); 
        if(optionalForm_C.isPresent()) {
       	 Form_C form_C = optionalForm_C.get();
       	 form_C.setForm_level(form_level);
            return form_CRepository.save(form_C);
        } else {
            return null;
        }
	}
	
	public void addForm_CToUser(Form_C c, User u) {
		c.setUser(u);
		this.form_CRepository.save(c);
	}
}

package com.excellaproject.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.excellaproject.models.Form_B;
import com.excellaproject.models.User;
import com.excellaproject.repositories.Form_BRepository;

@Service
public class Form_BService {
	private final Form_BRepository form_BRepository;

	public Form_BService(Form_BRepository form_BRepository) {
		this.form_BRepository = form_BRepository;
	}
	
	public List<Form_B> allForms(){
		return form_BRepository.findAll();
	}
	
	public List<Form_B> formRejected(Long id){
		return form_BRepository.findRejectedForms(id);
	}
	
	public List<Form_B> formPending(Long id){
		return form_BRepository.findPendingForms(id);
	}
	
	public List<Form_B> formComplete(Long id){
		return form_BRepository.findCompleteForms(id);
	}
	
	public Form_B createForm(Form_B b) {
		return form_BRepository.save(b);
	}
	
	public Form_B findForm(long id) {
		Optional<Form_B> optionalForm_B = form_BRepository.findById(id);
		if(optionalForm_B.isPresent()) {
			return optionalForm_B.get();
		}
		else {
			return null;
		}
	}
	
	public Form_B updateForm(long id, int form_level) {
		Optional<Form_B> optionalForm_B = form_BRepository.findById(id); 
        if(optionalForm_B.isPresent()) {
       	 Form_B form_B = optionalForm_B.get();
       	 form_B.setForm_level(form_level);
            return form_BRepository.save(form_B);
        } else {
            return null;
        }
	}
	
	public void addForm_BToUser(Form_B b, User u) {
		b.setUser(u);
		this.form_BRepository.save(b);
	}
}

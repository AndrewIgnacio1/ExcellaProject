package com.excellaproject.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.excellaproject.models.Form_D;
import com.excellaproject.models.User;
import com.excellaproject.repositories.Form_DRepository;

@Service
public class Form_DService {
	private final Form_DRepository form_DRepository;

	public Form_DService(Form_DRepository form_DRepository) {
		this.form_DRepository = form_DRepository;
	}
	
	public List<Form_D> allForms(){
		return form_DRepository.findAll();
	}
	
	public List<Form_D> formRejected(Long id){
		return form_DRepository.findRejectedForms(id);
	}
	
	public List<Form_D> formPending(Long id){
		return form_DRepository.findPendingForms(id);
	}
	
	public List<Form_D> formComplete(Long id){
		return form_DRepository.findCompleteForms(id);
	}
	
	public Form_D createForm(Form_D d) {
		return form_DRepository.save(d);
	}
	
	public Form_D findForm(long id) {
		Optional<Form_D> optionalForm_D = form_DRepository.findById(id);
		if(optionalForm_D.isPresent()) {
			return optionalForm_D.get();
		}
		else {
			return null;
		}
	}
	
	public Form_D updateForm(long id, int form_level) {
		Optional<Form_D> optionalForm_D = form_DRepository.findById(id); 
        if(optionalForm_D.isPresent()) {
       	 Form_D form_D = optionalForm_D.get();
       	 form_D.setForm_level(form_level);
            return form_DRepository.save(form_D);
        } else {
            return null;
        }
	}
	
	public void addForm_DToUser(Form_D d, User u) {
		d.setUser(u);
		this.form_DRepository.save(d);
	}
}

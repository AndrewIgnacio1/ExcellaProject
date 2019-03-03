package com.excellaproject.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.Size;

//<<---------------User Model--------------->>

@Entity
@Table(name="forms_a")
public class Form_A {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@Size(min = 1, message="First name must not be blank")
	private String first_name;
	
	@Size(min = 1, message="Last name must not be blank")
	private String last_name;

	private String middle_initial;
	
	@Email(message="Email must be valid")
	@Size(min=1, message="Email must not be blank")
	private String email;
	
	@Size(min = 1, message="Number must not be blank")
	private String number;
	
	@Size(min = 1, message="Address must not be blank")
	private String address;
	
	private String address2;
	
	@Size(min = 1, message="City must not be blank")
	private String city;
	
	@Size(min = 1, message="State must not be blank")
	private String state;
	
	@Size(min = 1, message="Zip code must not be blank")
	private String zip;
	
	private int form_level = 1;
	
	@Column (updatable = false)
	private Date createdAt;
	private Date updatedAt;
	
	public Form_A() {
		
	}
	
//  <<---------------One To One Relationship--------------->>
	
	@OneToOne (fetch=FetchType.LAZY)
	@JoinColumn(name="user_id")
	private User user;

//	<<---------------Getters and Setters--------------->>
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getMiddle_initial() {
		return middle_initial;
	}

	public void setMiddle_initial(String middle_initial) {
		this.middle_initial = middle_initial;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public int getForm_level() {
		return form_level;
	}

	public void setForm_level(int form_level) {
		this.form_level = form_level;
	}

//	<<---------------Creating/Updating--------------->>

	@PrePersist
    protected void onCreate(){
        this.createdAt = new Date();
    }
    @PreUpdate
    protected void onUpdate(){
        this.updatedAt = new Date();
    }
	
}

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
import javax.validation.constraints.Size;

//<<---------------Form C Model--------------->>

@Entity
@Table(name="forms_c")
public class Form_C {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@Size(min = 1, message="Must not be blank")
	private String one;
	
	@Size(min = 1, message="Must not be blank")
	private String two;

	private String three;
	
	@Size(min=1, message="Must not be blank")
	private String four;
	
	@Size(min = 1, message="Must not be blank")
	private String five;
	
	@Size(min = 1, message="Must not be blank")
	private String six;
	
	private String seven;
	
	@Size(min = 1, message="Must not be blank")
	private String eight;
	
	@Size(min = 1, message="Must not be blank")
	private String nine;
	
	@Size(min = 1, message="Must not be blank")
	private String ten;
	
	private int form_level = 1;
	
	@Column (updatable = false)
	private Date createdAt;
	private Date updatedAt;
	
	public Form_C() {
		
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

	public String getOne() {
		return one;
	}

	public void setOne(String one) {
		this.one = one;
	}

	public String getTwo() {
		return two;
	}

	public void setTwo(String two) {
		this.two = two;
	}

	public String getThree() {
		return three;
	}

	public void setThree(String three) {
		this.three = three;
	}

	public String getFour() {
		return four;
	}

	public void setFour(String four) {
		this.four = four;
	}

	public String getFive() {
		return five;
	}

	public void setFive(String five) {
		this.five = five;
	}

	public String getSix() {
		return six;
	}

	public void setSix(String six) {
		this.six = six;
	}

	public String getSeven() {
		return seven;
	}

	public void setSeven(String seven) {
		this.seven = seven;
	}

	public String getEight() {
		return eight;
	}

	public void setEight(String eight) {
		this.eight = eight;
	}

	public String getNine() {
		return nine;
	}

	public void setNine(String nine) {
		this.nine = nine;
	}

	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public int getForm_level() {
		return form_level;
	}

	public void setForm_level(int form_level) {
		this.form_level = form_level;
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
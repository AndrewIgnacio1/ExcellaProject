package com.excellaproject.models;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;

import org.mindrot.jbcrypt.BCrypt;

//<<---------------User Model--------------->>

@Entity
@Table(name="users")
public class User {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	private Integer user_level;
	
	private String icon;
	
	private String username;

	private String email;
	
	private String password;
	
	@Column (updatable = false)
	private Date createdAt;
	private Date updatedAt;
	
	public User() {
		
	}

//	<<---------------One To Many Relationship--------------->>
	
	@OneToMany(mappedBy="user", fetch = FetchType.LAZY)
	private List<Message> sent_messages;
	
//  <<---------------One To One Relationship--------------->>
	
	@OneToOne (mappedBy="user", cascade=CascadeType.ALL, fetch=FetchType.LAZY)
	private Message received_message;
	
	@OneToOne (mappedBy="user", cascade=CascadeType.ALL, fetch=FetchType.LAZY)
	private Form_A form_a;
	
	@OneToOne (mappedBy="user", cascade=CascadeType.ALL, fetch=FetchType.LAZY)
	private Form_B form_b;
	
	@OneToOne (mappedBy="user", cascade=CascadeType.ALL, fetch=FetchType.LAZY)
	private Form_C form_c;
	
//	<<---------------Defining Constructor--------------->>
	
	public User (Map<String, String> body) {
		this.icon = body.get("icon");
		this.username = body.get("username");
		this.email = body.get("email");
		this.password = BCrypt.hashpw(body.get("password"), BCrypt.gensalt());
	}
	
//	<<---------------Getters and Setters--------------->>

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Integer getUser_level() {
		return user_level;
	}

	public void setUser_level(Integer user_level) {
		this.user_level = user_level;
	}
	
	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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

	public List<Message> getSent_messages() {
		return sent_messages;
	}

	public void setSent_messages(List<Message> sent_messages) {
		this.sent_messages = sent_messages;
	}

	public Message getReceived_message() {
		return received_message;
	}

	public void setReceived_message(Message received_message) {
		this.received_message = received_message;
	}

	public Form_A getForm_a() {
		return form_a;
	}

	public void setForm_a(Form_A form_a) {
		this.form_a = form_a;
	}

	public Form_B getForm_b() {
		return form_b;
	}

	public void setForm_b(Form_B form_b) {
		this.form_b = form_b;
	}

	public Form_C getForm_c() {
		return form_c;
	}

	public void setForm_c(Form_C form_c) {
		this.form_c = form_c;
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

package com.excellaproject.models;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

//<<---------------User Model--------------->>

@Entity
@Table(name="forms_b")
public class Form_B {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;

//  <<---------------One To One Relationship--------------->>
	
	@OneToOne (fetch=FetchType.LAZY)
	@JoinColumn(name="user_id")
	private User user;
	
}

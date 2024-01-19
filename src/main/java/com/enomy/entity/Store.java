package com.enomy.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity // Used to map the entity to DB table
//is not same as java entity 
public class Store {
	
	// The field�id�is annotated with�@Id�and�
	// @GeneratedValue�annotations to indicate that 
	// this field is primary key and 
	//its value is auto generated.

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	// Ensure the fields name match with table column name
	// Otherwise use @Column annotation
	//@Column(name="name")
	private String name;
	private String phone_number;
	
	private String localities;
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	public String getLocalities() {
		return localities;
	}
	public void setLocalities(String localities) {
		this.localities = localities;
	}
	
	

	

	
	

}

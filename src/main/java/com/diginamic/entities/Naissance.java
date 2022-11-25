package com.diginamic.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "naissance")
public class Naissance {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	@Column(name="id_1")
	private Long id_1;
	
	
	
	public Long getId_1() {
		return id_1;
	}

	public void setId_1(Long id_1) {
		this.id_1 = id_1;
	}
	@Column(name="id")
	private String id;
	
	@Column(name="date_naissance")
	private String dateNaissance;
	@Column(name="lieu_naissance")
	private String lieuNaissance;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getDateNaissance() {
		return dateNaissance;
	}
	public void setDateNaissance(String dateNaissance) {
		this.dateNaissance = dateNaissance;
	}
	public String getLieuNaissance() {
		return lieuNaissance;
	}
	public void setLieuNaissance(String lieuNaissance) {
		this.lieuNaissance = lieuNaissance;
	}
	
	
	
}

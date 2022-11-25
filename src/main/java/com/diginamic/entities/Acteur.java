package com.diginamic.entities;

import java.time.LocalDate;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "acteur")
public class Acteur {

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
	
	@Column(name="identite")
	private String identite;
	
	@OneToOne(cascade = {CascadeType.ALL})
    @JoinColumn(name = "naissance_id", referencedColumnName = "id")
	private Naissance naissance;
	
	@Column(name="url")
	private String url;
	
	@Column(name="height")
	private String height;	

	@OneToMany(mappedBy = "acteur", cascade = {CascadeType.ALL})
	private Set<Role> roles = new HashSet<>();
	
	
	
	
	

	public Acteur() {
		
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getIdentite() {
		return identite;
	}

	public void setIdentite(String identite) {
		this.identite = identite;
	}

	public Naissance getNaissance() {
		return naissance;
	}

	public void setNaissance(Naissance naissance) {
		this.naissance = naissance;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}

	public Set<Role> getRoles() {
		return roles;
	}

	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}
	
}
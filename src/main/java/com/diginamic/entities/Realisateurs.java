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
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="realisateur")
public class Realisateurs {

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
	
	@Column(name="url")
	private String url;
	
	
	@ManyToOne(cascade = {CascadeType.ALL})
    @JoinColumn(name="film_id")
    private Film film;


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


	public String getUrl() {
		return url;
	}


	public void setUrl(String url) {
		this.url = url;
	}


	public Film getFilm() {
		return film;
	}


	public void setFilm(Film film) {
		this.film = film;
	}


	
	
	
}
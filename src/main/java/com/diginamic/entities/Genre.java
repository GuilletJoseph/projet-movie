package com.diginamic.entities;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
@Entity
@Table(name = "GENRE")
public class Genre {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@JsonIgnore()
	private Long id;

	@Column(name="nom")
	private String nom;
	
	@ManyToMany(mappedBy = "lstGenres")
	private Set<Film> lstFilms = new HashSet<>();


	public Genre(String nom) {
		super();
		this.nom = nom;
	}

	

	public String getNom() {
		return nom;
	}




	public void setNom(String nom) {
		this.nom = nom;
	}



	public Set<Film> getLstFilms() {
		return lstFilms;
	}



	public void setLstFilms(Set<Film> lstFilms) {
		this.lstFilms = lstFilms;
	}



	public Long getId() {
		return id;
	}



	public void setId(Long id) {
		this.id = id;
	}

}
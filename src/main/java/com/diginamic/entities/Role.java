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
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.GenericGenerator;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

@Entity
@Table(name="ROLE")
public class Role {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@JsonIgnore()
	private Long id;
	
	@Column(name="character_name")
	private String characterName;
	
	
	
	@JsonProperty("film")
	@Column(name="film")
	private String sFilm;
	
	@JsonIgnore
	@Transient
	private Film film;
	
	
	@ManyToMany(mappedBy = "roles")
	private Set<Film> films = new HashSet<>();
	
	
	
	
	public Set<Film> getFilms() {
		return films;
	}


	public void setFilms(Set<Film> films) {
		this.films = films;
	}


	@ManyToOne(cascade = {CascadeType.ALL})
	@JoinColumn(name="id_acteur")
	private Acteur acteur;
	
	


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getCharacterName() {
		return characterName;
	}


	public void setCharacterName(String characterName) {
		this.characterName = characterName;
	}


	public Acteur getActeur() {
		return acteur;
	}


	public void setActeur(Acteur acteur) {
		this.acteur = acteur;
	}


	

	public String getsFilm() {
		return sFilm;
	}


	public void setsFilm(String sFilm) {
		this.sFilm = sFilm;
	}


	public Film getFilm() {
		return film;
	}


	public void setFilm(Film film) {
		this.film = film;
	}




	
	

	

}
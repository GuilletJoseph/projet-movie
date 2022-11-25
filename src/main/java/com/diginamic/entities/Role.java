package com.diginamic.entities;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="role")
public class Role {

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
	
	@Column(name="character_name")
	private String characterName;
	
	@ManyToOne(cascade = {CascadeType.ALL})
	@JoinColumn(name="acteur_id")
	private Acteur acteur;
	

	@Column(name="film")
	private String film;
	
	
	@ManyToOne(cascade = {CascadeType.ALL})
	@JoinColumn(name="film_id")
	private Film filmId;
	
	
	

	public Film getFilmId() {
		return filmId;
	}

	public void setFilmId(Film filmId) {
		this.filmId = filmId;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
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

	public String getFilm() {
		return film;
	}

	public void setFilm(String film) {
		this.film = film;
	}

}
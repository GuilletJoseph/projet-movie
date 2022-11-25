package com.diginamic.entities;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
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
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;



@Entity
@Table(name="film")
public class Film {
	
	
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
	
	
	@OneToOne(cascade = {CascadeType.ALL})
    @JoinColumn(name = "pays_id", referencedColumnName = "id")
    private Pays pays;
	
	
	@Column(name="nom")
	private String nom;
	
	@Column(name="url")
	private String url;
	
	@Column(name="plot")
	private String plot;
	
	@Column(name="langue")
	private String langue ;
	
	@OneToOne(cascade = {CascadeType.ALL})
    @JoinColumn(name = "lieu_tournage_id", referencedColumnName = "id")
    private LieuTournage lieuTournage;
	

	@OneToMany(mappedBy="film", cascade = {CascadeType.ALL})
	private Set<Realisateurs> realisateurs = new HashSet<>();
	
	@OneToMany(mappedBy="film",cascade = {CascadeType.ALL})
	private Set<CastingPrincipal> castingPrincipal = new HashSet<>();
	
	
	@Column(name="anne_sortie")
	private Integer anneeSortie;
	
	
	@OneToMany(mappedBy="film", cascade = {CascadeType.ALL})
	private Set<Role> roles = new HashSet<>();

	@Column(name="genres")
	private String genres;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Pays getPays() {
		return pays;
	}

	public void setPays(Pays pays) {
		this.pays = pays;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getPlot() {
		return plot;
	}

	public void setPlot(String plot) {
		this.plot = plot;
	}

	public String getLangue() {
		return langue;
	}

	public void setLangue(String langue) {
		this.langue = langue;
	}

	public LieuTournage getLieuTournage() {
		return lieuTournage;
	}

	public void setLieuTournage(LieuTournage lieuTournage) {
		this.lieuTournage = lieuTournage;
	}

	public Set<Realisateurs> getRealisateurs() {
		return realisateurs;
	}

	public void setRealisateurs(Set<Realisateurs> realisateurs) {
		this.realisateurs = realisateurs;
	}

	public Set<CastingPrincipal> getCastingPrincipal() {
		return castingPrincipal;
	}

	public void setCastingPrincipal(Set<CastingPrincipal> castingPrincipal) {
		this.castingPrincipal = castingPrincipal;
	}

	public Integer getAnneeSortie() {
		return anneeSortie;
	}

	public void setAnneeSortie(Integer anneeSortie) {
		this.anneeSortie = anneeSortie;
	}

	public Set<Role> getRoles() {
		return roles;
	}

	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}

	public String getGenres() {
		return genres;
	}

	public void setGenres(String genres) {
		this.genres = genres;
	}  

	
}
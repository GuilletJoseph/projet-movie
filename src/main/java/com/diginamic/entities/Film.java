package com.diginamic.entities;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
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
import javax.persistence.Transient;

import org.hibernate.annotations.GenericGenerator;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;




@Entity
@Table(name="FILM")
public class Film {
	
	
	
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@JsonIgnore
	private Long id;
	
	
	@Column(name="id_imdb")
	@JsonProperty("id")
    private String idImdb;
	

	
	
	@Column(name="nom")
	private String nom;
	
	@Column(name="url")
	private String url;
	
	@Column(name="plot")
	private String plot;
	
	
	@Column(name="langue")
    private String langue;

	@Transient
    private LieuTournage lieuTournage;
	
	
	@ManyToMany(cascade = {CascadeType.ALL})
	@JoinTable(name="FILM_LIEUTOURNAGE", joinColumns = { @JoinColumn(name = "id_film") }, 
	        inverseJoinColumns = { @JoinColumn(name = "id_lieutournage") } )
	private Set<LieuTournage> lstLieuTurnage = new HashSet<>();
	
	
	@ManyToOne(cascade = {CascadeType.ALL})
    @JoinColumn(name="pays")
	private Pays pays;
	
	
	
	
	
	@ManyToMany(cascade = {CascadeType.ALL})
	@JoinTable(name="FILM_GENRE", joinColumns = { @JoinColumn(name = "id_film") }, 
	       inverseJoinColumns = { @JoinColumn(name = "id_genre") } )
	private List<Genre> lstGenres = new ArrayList<>();

	
	
	
	@ManyToMany (cascade = {CascadeType.ALL})
	@JoinTable(name="FILM_REAlISATEUR", joinColumns = { @JoinColumn(name = "id_film") }, 
    inverseJoinColumns = { @JoinColumn(name = "id_realisateur") } )
	private Set<Realisateur> realisateurs = new HashSet<>();
	
	
	@ManyToMany (cascade = {CascadeType.ALL})
	@JoinTable(name="FILM_CASTINGPRINCIPAL", joinColumns = { @JoinColumn(name = "id_film") }, 
    inverseJoinColumns = { @JoinColumn(name = "id_acteur") } )	
	private Set<Acteur> castingPrincipal = new HashSet<>();
	
	
	@Column(name="anne_sortie")
	private String anneeSortie;
	
	
	
	


	public Set<Acteur> getCastingPrincipal() {
		return castingPrincipal;
	}


	public void setCastingPrincipal(Set<Acteur> castingPrincipal) {
		this.castingPrincipal = castingPrincipal;
	}


	@JsonProperty("genres")
	@Transient
    private String[] genres;
	
	
	
	@ManyToMany (cascade = {CascadeType.ALL})
	@JoinTable(name="FILM_ROLE", joinColumns = { @JoinColumn(name = "id_film") }, 
    inverseJoinColumns = { @JoinColumn(name = "id_role") } )	
	private Set<Role> roles = new HashSet<>();


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getIdImdb() {
		return idImdb;
	}


	public void setIdImdb(String idImdb) {
		this.idImdb = idImdb;
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



	public LieuTournage getLieuTournage() {
		return lieuTournage;
	}


	public void setLieuTournage(LieuTournage lieuTournage) {
		this.lieuTournage = lieuTournage;
	}


	public Set<Realisateur> getRealisateurs() {
		return realisateurs;
	}


	public void setRealisateurs(Set<Realisateur> realisateurs) {
		this.realisateurs = realisateurs;
	}


	public String getAnneeSortie() {
		return anneeSortie;
	}


	public void setAnneeSortie(String anneeSortie) {
		this.anneeSortie = anneeSortie;
	}


	


	public String[] getGenres() {
		return genres;
	}


	public void setGenres(String[] genres) {
		this.genres = genres;
	}





	public List<Genre> getLstGenres() {
		return lstGenres;
	}


	public void setLstGenres(List<Genre> lstGenres) {
		this.lstGenres = lstGenres;
	}


	public Set<Role> getRoles() {
		return roles;
	}


	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}


	public String getLangue() {
		return langue;
	}


	public void setLangue(String langue) {
		this.langue = langue;
	}





	public Set<LieuTournage> getLstLieuTurnage() {
		return lstLieuTurnage;
	}


	public void setLstLieuTurnage(Set<LieuTournage> lstLieuTurnage) {
		this.lstLieuTurnage = lstLieuTurnage;
	}


	public Pays getPays() {
		return pays;
	}


	public void setPays(Pays pays) {
		this.pays = pays;
	}
	
}
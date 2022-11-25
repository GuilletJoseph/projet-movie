package com.diginamic.entities;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "lieu_tournage")
public class LieuTournage {

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
	
	
	@Column(name="ville")
	private String ville;
	
	
	@Column(name="etat_dept")
	private String etatDept;
	

	@Column(name="pays")
	private String pays;
	
	@OneToOne(mappedBy = "lieuTournage",cascade = {CascadeType.ALL})
    private Film film = new Film();

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getVille() {
		return ville;
	}

	public void setVille(String ville) {
		this.ville = ville;
	}

	public String getEtatDept() {
		return etatDept;
	}

	public void setEtatDept(String etatDept) {
		this.etatDept = etatDept;
	}

	public String getPays() {
		return pays;
	}

	public void setPays(String pays) {
		this.pays = pays;
	}

	public Film getFilm() {
		return film;
	}

	public void setFilm(Film film) {
		this.film = film;
	}

}

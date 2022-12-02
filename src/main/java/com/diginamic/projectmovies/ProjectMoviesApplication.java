package com.diginamic.projectmovies;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import com.diginamic.entities.Acteur;
import com.diginamic.entities.Film;
import com.diginamic.entities.Genre;
import com.diginamic.entities.LieuTournage;
import com.diginamic.entities.Pays;
import com.diginamic.entities.Role;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
public class ProjectMoviesApplication {

	public static void main(String[] args) throws IOException {
		
		
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("project-movies");
		EntityManager em = emf.createEntityManager();	
	  EntityTransaction transaction = em.getTransaction();
		

		ObjectMapper objectMapper = new ObjectMapper();
		File file = new File("src/main/resources/test.json");  
		List<Film> filmList = objectMapper.readValue(file, new TypeReference<>(){});
		
		
		HashMap<String, Pays> lstPays =new HashMap<>();		
		HashMap<String, Genre> lstGenre =new HashMap<>();	
		
		
	for (int i=0; i<filmList.size(); i++) {
		
		//changement l'objet pays
		Pays pays = filmList.get(i).getPays();
		if (lstPays.containsKey(pays.getNom())) {
			
			filmList.get(i).setPays(lstPays.get(pays.getNom()));		
		} else {
			lstPays.put(filmList.get(i).getPays().getNom(), pays);
		}
		
		
		//changement l'objet genre
		List<Genre> genreObj = new ArrayList<>();
		String a[] =filmList.get(i).getGenres();
		 for (int j=0; j<a.length; j++) {
			genreObj.add(new Genre(a[j])); 
		 }
			
			for(int k=0; k<genreObj.size(); k++) {
				if (lstGenre.containsKey(genreObj.get(k).getNom())) {
				genreObj.set(k, lstGenre.get(genreObj.get(k).getNom()));
				
				}	else {
					lstGenre.put(genreObj.get(k).getNom(), genreObj.get(k))	;		
				}							
		}	
		filmList.get(i).setLstGenres(genreObj);		
		
		//changement lieu tournage
		Set<LieuTournage> setLieuTournage =filmList.get(i).getLstLieuTurnage();
		setLieuTournage.add(filmList.get(i).getLieuTournage());
		
		filmList.get(i).setLstLieuTurnage(setLieuTournage);
		System.out.println(filmList.get(i).getLstLieuTurnage());
		
		transaction.begin();
	em.persist(filmList.get(i));
	transaction.commit();
	  }  
	
	em.close(); 	
	}
}

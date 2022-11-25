package com.diginamic.projectmovies;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import com.diginamic.entities.Acteur;
import com.diginamic.entities.Film;
import com.diginamic.entities.Pays;
import com.diginamic.entities.Realisateurs;
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
	  
	  
	 System.out.println(filmList.get(0).getPays().getNom());
	  
	transaction.begin();
	em.persist(filmList.get(0));
	transaction.commit();
	
	
	
	em.close();
	}
}

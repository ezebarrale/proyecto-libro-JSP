package repositories;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import connections.Conexion;
import models.Libro;

public class LibroDAO {
	
	EntityManager entity;

	public LibroDAO() {
	}
	
	public void guardarLibro(Libro libro) {
		entity = Conexion.getEntityManager();
		
		try {
			entity.getTransaction().begin();
			entity.persist(libro);
			entity.getTransaction().commit();
		} finally {
			if (entity != null) {
				entity.close();
			}
		}
	}
	
	
	public Libro buscarLibroPorId(Integer id) {
		entity = Conexion.getEntityManager();
		
		Libro libro = new Libro();
		libro = entity.find(Libro.class, id);
		return libro;
	}
	
	
	public List<Libro> obtenerLibros() {
		entity = Conexion.getEntityManager();
		
		try {
			List<Libro> listaLibros =  new ArrayList<>();
			Query sql = entity.createQuery("SELECT l FROM Libro l");
			return listaLibros = sql.getResultList();
		} finally {
			if (entity != null) {
				entity.close();
			}
		}
	}
	
	
	public void eliminarLibro(Integer id) {
		Libro libro = buscarLibroPorId(id);
		
		try {
			entity.getTransaction().begin();
			entity.remove(libro);
			entity.getTransaction().commit();
		} finally {
			if (entity != null) {
				entity.close();
			}
		}
	}
	
	public void actualizarLibro(Libro libro) {
		entity = Conexion.getEntityManager();
		
		try {
			entity.getTransaction().begin();
			entity.merge(libro);
			entity.getTransaction().commit();
		} finally {
			if (entity != null) {
				entity.close();
			}
		}
	}
	
	public void cerrarConexion() {
		Conexion.closeEntityManagerFactory();
	}
	

}

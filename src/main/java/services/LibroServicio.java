package services;

import java.util.List;

import models.Libro;
import repositories.LibroDAO;

public class LibroServicio {

	LibroDAO libroDao;

	public LibroServicio() {
		super();
		libroDao = new LibroDAO();
	}
	
	public void crearLibro(Long isbn, String titulo, Integer anio, Integer ejemplares) {
		Libro libro = new Libro();
		
		libro.setIsbn(isbn);
		libro.setTitulo(titulo);
		libro.setAnio(anio);
		libro.setEjemplares(ejemplares);
		libro.setAlta(true);
		
		libroDao.guardarLibro(libro);
	}
	
	public Libro obtenerLibro(Integer id) {
		return libroDao.buscarLibroPorId(id);
	}
	
	public List<Libro> mostrarLibros() {
		List<Libro> listaLibros = libroDao.obtenerLibros();
		return listaLibros;
	}
	
	public void borrarLibro(Integer id) {
		libroDao.eliminarLibro(id);
	}
	
	public void editarLibro(Libro libro) {
		//Libro libro = lib;
		//libro.setAlta(true);
		libroDao.actualizarLibro(libro);
	}
}

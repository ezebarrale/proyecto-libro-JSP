package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.Libro;
import repositories.LibroDAO;
import services.LibroServicio;

@WebServlet(name = "SvLibro", urlPatterns= "/SvLibro")
public class SvLibro extends HttpServlet {
	//private static final long serialVersionUID = 1L;
	
	LibroServicio servicio;
       
    public SvLibro() {
        super();
        servicio = new LibroServicio();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
		
		if (action == null) {
			
			List<Libro> listaLibros = servicio.mostrarLibros();
			
			/*traer libros de la base de datos*/
			
			HttpSession miSesion = request.getSession();
			miSesion.setAttribute("listaLibros", listaLibros);
			
			response.sendRedirect("mostrarLibros.jsp");
			
		}else if(action.equals("actualizar")) {
			
			Integer id = Integer.parseInt(request.getParameter("id_libro"));
			Libro libro =  servicio.obtenerLibro(id);
			
			HttpSession miSesion = request.getSession();
			miSesion.setAttribute("libro", libro);
			
			response.sendRedirect("editarLibro.jsp");
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
		
		if (action.equals("eliminar")) {
			
			Integer id = Integer.parseInt(request.getParameter("id_libro"));
			servicio.borrarLibro(id);
			
			response.sendRedirect("index.jsp");
			
		}else if(action.equals("crear")) {
			
			Long isbn = Long.parseLong(request.getParameter("isbn"));
			String titulo = request.getParameter("titulo");
			Integer anio = Integer.parseInt(request.getParameter("anio"));
			Integer ejemplares = Integer.parseInt(request.getParameter("ejemplares"));
			
			servicio.crearLibro(isbn, titulo, anio, ejemplares);
			
			response.sendRedirect("index.jsp");
			
		}else if(action.equals("actualizar")) {
			
			Libro libro = (Libro)request.getSession().getAttribute("libro");

			libro.setIsbn(Long.parseLong(request.getParameter("isbn")));
			libro.setTitulo(request.getParameter("titulo"));
			libro.setAnio(Integer.parseInt(request.getParameter("anio")));
			libro.setEjemplares(Integer.parseInt(request.getParameter("ejemplares")));
			
			servicio.editarLibro(libro);
			
			response.sendRedirect("index.jsp");
		}
		
	}

}

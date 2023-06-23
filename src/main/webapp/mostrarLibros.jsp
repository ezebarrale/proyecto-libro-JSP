<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import= "java.util.List"
		import= "models.Libro" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mostrar Libros</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

	<div class="container">
	
		<div class="row justify-content-between mx-4 my-5">
			<h2></h2>
			<h2>Listado de Libros</h2>
			<a class="btn btn-outline-dark" href="/librosJSP/index.jsp">Volver</a>
		</div>
		
		<div class="row justify-content-center my-5">
			<%
			List<Libro> listaLibros = (List)request.getSession().getAttribute("listaLibros");
		
			for(Libro libro: listaLibros){
			%>
			
			<div class="col-md-4">
			
				<div class="card">
			      <div class="card-body">
			        <h5 class="card-title"><%= libro.getTitulo() %></h5>
			        <p class="card-text">ISBN: <%= libro.getIsbn().toString() %></p>
			        <p class="card-text">Año: <%= libro.getAnio() %></p>
			        <p class="card-text">Ejemplares: <%= libro.getEjemplares() %></p>
			        <div class="row justify-content-center my-2">
			        
						<form class="mx-1" action="SvLibro" method="POST">
							<input type="hidden" name="action" value="eliminar">
							<input type="hidden" name="id_libro" value=<%= libro.getId() %>>
							<button class="btn btn-outline-danger" type="submit">Eliminar</button>
						</form>
						
						<form class="mx-1" action="SvLibro" method="GET">
							<input type="hidden" name="action" value="actualizar">
							<input type="hidden" name="id_libro" value=<%= libro.getId() %>>
							<button class="btn btn-outline-dark" type="submit">Editar</button>
						</form>
						
					</div>
			      </div>
			    </div>
			
			</div>
				
			<% } 
			%>
		</div>
	
	</div>

	
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
	

</body>
</html>
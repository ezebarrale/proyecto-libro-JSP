<%@page import="models.Libro"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Libro</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

	<div class="container">
	
		<div class="row justify-content-center my-5">
		
			<div class="col-md-8">
				<div class="card">
					
					<div class="card-body">
						<div class="row d-flex justify-content-between mx-4 my-2">
							<h5 class="card-title">Modificar libro: </h5>
						</div>
						
						<% Libro libro = (Libro)request.getSession().getAttribute("libro"); %>
						<form action="SvLibro" method="POST">
						
							<input type="hidden" name="action" value="actualizar">
							<input type="hidden" name="id_libro" value=<%= libro.getId() %>>
							
							<div class="row justify-content-center mx-5 my-4">
				
								<div class="col-md-6">
									<label>Título: </label><input class="form-control" type="text" name="titulo" value=<%= libro.getTitulo() %>>
									<label>Año: </label><input class="form-control" type="text" name="anio" value=<%= libro.getAnio() %>>
								</div>
									
								<div class="col-md-6">
									<label>ISBN: </label><input class="form-control" type="text" name="isbn" value=<%= libro.getIsbn().toString() %>>
									<label>Ejemplares: </label><input class="form-control" type="text" name="ejemplares" value=<%= libro.getEjemplares() %>>
								</div>
								
							</div>
							
							<div class="row justify-content-end my-2 mx-4">
								<a class="btn btn-outline-dark mx-1" href="/librosJSP/mostrarLibros.jsp">Volver</a>
								<button class="btn btn-outline-dark mx-1" type="submit">Guardar</button>
							</div>
							
						</form>
					</div>
				</div>
			</div>
			
		</div>
	
	</div>

	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
	
</body>
</html>
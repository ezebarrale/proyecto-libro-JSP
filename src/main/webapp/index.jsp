<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Libros APP</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

	<div class="container">
	
		<div class="row justify-content-center my-4">
			<h1>Bienvenido </h1>
			
		</div>
		
		<div class="row d-flex justify-content-center mx-4 my-2">
		
			<div class="col-md-8">
				<div class="card">
					<div class="card-body">
						<div class="row d-flex justify-content-between mx-4 my-2">
							<h5 class="card-title">Agregar un nuevo libro</h5>
							<form action="SvLibro" method="GET">
								<button class="btn btn-outline-dark" type="submit">Mostar libros</button>
							</form>
						</div>
						
						<form action="SvLibro" method="POST">
							<input type="hidden" name="action" value="crear">
								
							<div class="row justify-content-center mx-5 my-4">
								
								<div class="col-md-6">
									<label>Título: </label><input class="form-control" type="text" name="titulo">
									<label>Año: </label><input class="form-control" type="text" name="anio">
								</div>
									
								<div class="col-md-6">
									<label>ISBN: </label><input class="form-control" type="text" name="isbn">
									<label>Ejemplares: </label><input class="form-control" type="text" name="ejemplares">
								</div>
								
							</div>
							
							<div class="row justify-content-end mx-4">
								
								<button class="btn btn-outline-dark" type="submit">Crear libro</button>
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
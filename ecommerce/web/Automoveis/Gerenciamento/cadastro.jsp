<%-- 
    Document   : cadastro
    Created on : 02/03/2018, 22:04:26
    Author     : SONY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Automóvel</title>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

		<script>
		$(document).ready(function(){
		  $("#txtFilterMarca").on("keyup", function() {
			var value = $(this).val().toLowerCase();
			$(".dropdown-menu li").filter(function() {
			  $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
			});
		  });
		});
		</script>
    </head>
    <body>
		<div class="container">
			<h2>Cadastro de Automóveis</h2>
			<form name="cadastro" action="#" id="cadastro">
				<div class="col-md-12">
					<div class="col-md-12">
						<h3>Dados Básicos</h3>
					</div>
					<div class="col-md-6">
						<label for="ddlMarca">Marca:</label>
						<div class="dropdown">
							<button class="btn btn-secondary dropdown-toggle" type="button" id="ddlMarcar"
									data-toggle="dropdown" aria-hasopoup="true" aria-expanded="false">
									Selecione
							</button>
							<ul class="dropdown-menu">
								<input class="form-control" id="txtFilterMarca" type="text" placeholder="Pesquisar...">
								<li><a href="#">Agrale</a></li>
								<li><a href="#">Aston Martin</a></li>
								<li><a href="#">Audi</a></li>
								<li><a href="#">Bentley</a></li>
								<li><a href="#">BMW</a></li>
								<li><a href="#">Bugatti</a></li>
								<li><a href="#">Changan</a></li>
								<li><a href="#">Chery</a></li>
								<li><a href="#">GM/Chevrolet</a></li>
								<li><a href="#">Chrysler</a></li>
								<li><a href="#">Citroën</a></li>
								<li><a href="#">Dodge</a></li>
								<li><a href="#">Effa</a></li>
								<li><a href="#">Ferrari</a></li>
								<li><a href="#">Fiat</a></li>
								<li><a href="#">Ford</a></li>
								<li><a href="#">Geely</a></li>
								<li><a href="#">Hafei</a></li>
								<li><a href="#">Honda</a></li>
								<li><a href="#">Hyundai</a></li>
								<li><a href="#">Iveco</a></li>
								<li><a href="#">Jac Motors</a></li>
								<li><a href="#">Jaguar</a></li>
								<li><a href="#">Jeep</a></li>
								<li><a href="#">Jinbei</a></li>
								<li><a href="#">Kia</a></li>
								<li><a href="#">Lamborghini</a></li>
								<li><a href="#">Land Rover</a></li>
								<li><a href="#">Lexus</a></li>
								<li><a href="#">Lifan</a></li>
								<li><a href="#">Mahindra</a></li>
								<li><a href="#">Maserati</a></li>
								<li><a href="#">Mercedes-Benz</a></li>
								<li><a href="#">MG Motors</a></li>
								<li><a href="#">Mini</a></li>
								<li><a href="#">Mitsubishi</a></li>
								<li><a href="#">Nissan</a></li>
								<li><a href="#">Peugeot</a></li>
								<li><a href="#">Porsche</a></li>
								<li><a href="#">Ram</a></li>
								<li><a href="#">Renault</a></li>
								<li><a href="#">Smart</a></li>
								<li><a href="#">Ssangyong</a></li>
								<li><a href="#">Subaru</a></li>
								<li><a href="#">Suzuki</a></li>
								<li><a href="#">Toyota</a></li>
								<li><a href="#">Troller</a></li>
								<li><a href="#">Volkswagen</a></li>
								<li><a href="#">Volvo</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-6">
						
					</div>
				</div>
			</form>
		</div>
    </body>
</html>

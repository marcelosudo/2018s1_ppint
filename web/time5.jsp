<%-- 
    Document   : time5
    Created on : 23/03/2018, 21:52:08
    Author     : joaoa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<title> Gerenciamento de Produtos de Beleza </title>
		
	</head>
<script>
		function adicionar() {
			var table = document.getElementById("DataGrid");
			var nome = document.getElementById("Nome");
			var codigo = document.getElementById("codigoprod");
			var dia = document.getElementById("dia");
			var mes = document.getElementById("mes");
			var ano = document.getElementById("ano");
			var data = String(dia.value) + "/" + String(mes.value) + "/" + String(ano.value);
			var filial = document.getElementById("filial");
			var preco = document.getElementById("preco");
			var foto = document.getElementById("foto");
			
			var row = table.insertRow(1);
			var cell1 = row.insertCell(0);
			var cell2 = row.insertCell(1);
			var cell3 = row.insertCell(2);
			var cell4 = row.insertCell(3);
			var cell5 = row.insertCell(4);
			var cell6 = row.insertCell(5);
			cell1.innerHTML = nome.value;
			cell2.innerHTML = codigo.value;
			cell3.innerHTML = data;
			cell4.innerHTML = filial.value;
			cell5.innerHTML = preco.value;
			cell6.innerHTML = foto.value;
		}
		
		function remover() {
			var row = document.getElementById("linha");
			if(row.value != "0" && row.value != ""){
				document.getElementById("DataGrid").deleteRow(row.value);
			}
		}
		
		function alterar(){
		
		}
	</script>
<body>
	<center><img src="Imagens/Cabeçalho.jpeg" height="200" width="1000" alt="cabeçalho"></center>
	
	<!-- Dados do Produto-->
	<fieldset>
	<legend>Dados do Produto</legend>
	<div class="row">
		<div class="col-sm-1"></div>
		<div class="col-sm-3">
			<center><label >Nome: </label></center>
			<input type="text" id = "Nome" name = "Nome" style = "width: 100%">
		</div>	
		<div class="col-sm-3">
			<center><label for="sobrenome">Codigo do Produto: </label></center>
			<input type="text" name="codigoprod" id = "codigoprod" style = "width: 100%">
		</div>
		<div class="col-sm-4">
			<center><label>Validade: </label></center>
			<input type="text" name="dia" id = "dia" size="2" maxlength="2" value="dd" style = "width: 30%"> 
			<input type="text" name="mes" id = "mes" size="2" maxlength="2" value="mm" style = "width: 30%"> 
			<input type="text" name="ano" id = "ano" size="4" maxlength="4" value="aaaa" style = "width: 30%">
		</div>
		<div class="col-sm-1"></div>
	</div>
	
	<div class="row">
		<div class="col-sm-1"></div>
		<div class="col-sm-3">	   
			<center><label for="rg">Filial: </label></center>
			<input type="text" name="filial" name = "filial" id = "filial" style = "width: 100%" maxlength="15"> 
		</div>
		<div class="col-sm-3">
			<center><label for="rg" placeholder="teste">Preço do Produto: </label></center>
			<input type="text" name="preco" id = "preco" style = "width: 100%" maxlength="13"> 
		</div>
		<div class="col-sm-2">
			<center><label for="imagem">Foto do Produto:</label></center>
			<center><input type="file" name="foto" id = "foto"></center>
		</div>
		<div class="col-sm-1"></div>
	</div>
	</br>
	<div class="row">
		<div class="col-sm-12">
			<center><button type = "button" onclick="adicionar()">Cadastrar Item</button></center>
		</div>
	</div>
	</fieldset>
<br />

<!-- Lista de Produtos -->
<fieldset>
	<legend>Lista de Produtos</legend>
	<div class="row">
		<div class="col-sm-1"></div>
		<div class="col-sm-10">
				<table style="width:100%" id = "DataGrid" border 10px>
					<tr>
						<th>Nome:</th>
						<th>Codigo do Produto:</th> 
						<th>Validade:</th>
						<th>Filial:</th>
						<th>Preço do Produto:</th>
						<th>Foto do Produto:</th>
					</tr>
				</table>
		</div>
		<div class="col-sm-1"></div>
	</div>
	</br>
	<div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-2">
			<center><label for="rg" placeholder="teste">Linha a ser removida: </label>
			<input type="text" name="linha" id = "linha"></center>
		</div>
		<div class="col-sm-1"  align = "left">
			</br>
			<center><button type = "button" onclick="remover()">Remover Item</button></center>
		</div>
		<div class="col-sm-5"></div>
	</div>
	</fieldset>
<br />
 </body>
</html>

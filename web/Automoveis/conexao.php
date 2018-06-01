<?php 
	$conecta = mysql_connect("localhost", "root", "") or print (mysql_error()); 
	mysql_select_db("automovel", $conecta) or print(mysql_error()); 
	//print "Conexão e Seleção OK!";
?>
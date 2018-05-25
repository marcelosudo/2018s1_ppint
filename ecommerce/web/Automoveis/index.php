<?php include("conexao.php"); ?>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home - Automóveis</title>
        <link rel="stylesheet" type="text/css" href="estilo.css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>

        <div id="bg_topo">
            <div class="util">
                <a href="index.php"><img src="imagens/logo.png" id="logo"></a>

                <a href="Gerenciamento/cadastro.jsp"><div id="gerenciamento"> <img src="imagens/lock.png" style="width: 30px;margin-top: -5px;float: left;margin-right: 10px;"> Gerenciamento</div></a>

            </div>
        </div>
        
        <div class="limpar"></div>
        
        <div class="util">

            <ul class="marcas">
                <li><img src="imagens/marcas/marca01.jpg"></li>
                <li><img src="imagens/marcas/marca02.jpg"></li>
                <li><img src="imagens/marcas/marca03.jpg"></li>
                <li><img src="imagens/marcas/marca04.jpg"></li>
                <li><img src="imagens/marcas/marca05.jpg"></li>
                <li><img src="imagens/marcas/marca06.jpg"></li>
                <li><img src="imagens/marcas/marca07.jpg"></li>
                <li><img src="imagens/marcas/marca08.jpg"></li>
                <li><img src="imagens/marcas/marca09.jpg"></li>
                <li><img src="imagens/marcas/marca10.jpg"></li>
                <li><img src="imagens/marcas/marca11.jpg"></li>
                <li><img src="imagens/marcas/marca12.jpg"></li>
                <li><img src="imagens/marcas/marca13.jpg"></li>
                <li><img src="imagens/marcas/marca14.jpg"></li>
                <li><img src="imagens/marcas/marca15.jpg"></li>
                <li><img src="imagens/marcas/marca16.jpg"></li>
                <li><img src="imagens/marcas/marca17.jpg"></li>
                <li><img src="imagens/marcas/marca18.jpg"></li>
               

            </ul>

            <div class="limpar"></div>

            <!-- TITULO -->

            <div class="titulo_capa">Carros</div> 

            <form action="busca.php" method="post" name="busca">

            <ul class="meio">

                <li>                   

                    <ul class="busca">

                        <li>Refine sua busca</li>

                        <li>PALAVRA CHAVE <br /><input type="text" name="palavra" class="inp_busca" placeholder="1.8, turbo, ltz.." required></li>
                        <li>LOCALIZAÇÃO <br /> 

                            <select class="inp_busca" name="cidade">

                                <option value="">Cidade</option>
                                <option value="São José dos Campos">São José dos Campos</option>
                                <option value="Jacareí">Jacareí</option>
                                <option value="Taubaté">Taubaté</option>
                                <option value="Aparecida">Aparecida</option>
                                <option value="Pindamonhangaba">Pindamonhangaba</option>
                                <option value="Guaratinguetá">Guaratinguetá</option>
                                <option value="Caçapava">Caçapava</option>
                                <option value="Campinas">Campinas</option>
                                <option value="Caraguatatuba">Caraguatatuba</option>
                                <option value="Lorena">Lorena</option>
                                <option value="Bananal">Bananal</option>

                            </select>
                        </li>

                        <!-- <li>NOVO OU USADO <br /> <br /> 

                            <input type="checkbox" value="Novos" name="tipo_carro"> Novos <br />
                            <input type="checkbox" value="Usados" name="tipo_carro"> Usados


                        </li> -->
                        <li>SELECIONE VEÍCULO <br /> 

                            <select class="inp_busca" name="marca">

                                <option value="">Marca</option>
                                <option value="Fiat">Fiat</option>
                                <option value="Renault">Renault</option>
                                <option value="Mercedes">Mercedes</option>
                                <option value="Chevrolet">Chevrolet</option>
                                <option value="Ford">Ford</option>
                                <option value="BMW">BMW</option>
                                <option value="Land Rover">Land Rover</option>
                                <option value="Nissan">Nissan</option>
                                <option value="Volkswagen">Volkswagen</option>
                                
                              

                            </select><br/>
                            <select class="inp_busca" name="modelo">

                                <option value="">Modelo</option>
                                <option value="Van/Utilitario">Van/Utilitario</option>
                                <option value="SUV">SUV</option>
                                <option value="Hatchback">Hatchback</option>
                                <option value="Sedan">Sedan</option>
                               

                            </select>
                        </li>
                        <li>Ano <br /> <br/>

                            <select class="inp_busca2" name="ano" required>

                                <option value="">De</option>
                                <option value="1998">1998</option>
                                <option value="1999">1999</option>
                                <option value="2000">2000</option>
                                <option value="2001">2001</option>
                                <option value="2002">2002</option>
                                <option value="2003">2003</option>
                                <option value="2004">2004</option>
                                <option value="2005">2005</option>
                                <option value="2006">2006</option>
                                <option value="2007">2007</option>
                                <option value="2008">2008</option>
                                <option value="2009">2009</option>
                                <option value="2010">2010</option>
                                <option value="2011">2011</option>
                                <option value="2012">2012</option>
                                <option value="2013">2013</option>
                                <option value="2014">2014</option>
                                <option value="2015">2015</option>
                                <option value="2016">2016</option>
                                <option value="2017">2017</option>
                                <option value="2018">2018</option>
                            </select>
                            <select class="inp_busca3" name="ano2" required>

                                <option value="">Até</option>
                                <option value="1998">1998</option>
                                <option value="1999">1999</option>
                                <option value="2000">2000</option>
                                <option value="2001">2001</option>
                                <option value="2002">2002</option>
                                <option value="2003">2003</option>
                                <option value="2004">2004</option>
                                <option value="2005">2005</option>
                                <option value="2006">2006</option>
                                <option value="2007">2007</option>
                                <option value="2008">2008</option>
                                <option value="2009">2009</option>
                                <option value="2010">2010</option>
                                <option value="2011">2011</option>
                                <option value="2012">2012</option>
                                <option value="2013">2013</option>
                                <option value="2014">2014</option>
                                <option value="2015">2015</option>
                                <option value="2016">2016</option>
                                <option value="2017">2017</option>
                                <option value="2018">2018</option>



                            </select><br/>
                        <li>PREÇO <br /><br/><input type="text" name="preco" class="inp_busca4" placeholder="De: (min)" required>
                            <input type="text" class="inp_busca3" name="preco2" placeholder="Até: (max)" required></li><br/>
                        <li>QUILOMETRAGEM <br /><br/><input type="text" class="inp_busca4" name="km" placeholder="De: (min)" required>
                            <input type="text" class="inp_busca3" name="km2" placeholder="Até: (max)" required></li>
                        
                        <li><br><br><input type="submit" value="BUSCAR" class="btn_vermelho"></li>

                    </ul>

                </li>


                <li>
                    <ul class="carros">
                        <?php

                        $sqlc = mysql_query("SELECT * FROM Veiculo limit 9");

                        while($rowc = mysql_fetch_array($sqlc)){


                        ?>
                        <li>
                            <div id="efeito_carro">
                                <center><a href="detalhes.php?&idc=<?=$rowc['idVeiculo'] ?>"><input type="button" value="COMPRAR" class="btn_vermelho"></a></center>
                            </div>
                            <img src="imagens/carros/carro01.jpg">
                            <div class="nome_carro"><?=$rowc['idVeiculo'] ?></div>
                            <div class="preco_carro">R$ <?=$rowc['Valor'] ?></div>                           

                        </li>

                        <?php }; ?>
                    </ul>
                </li> 

            </ul>

            </form>

        </div>
    </body>
</html>

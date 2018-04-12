<%-- 
    Document   : index
    Created on : 09/04/2018, 18:31:32
    Author     : aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home - Automóveis</title>
        <link rel="stylesheet" type="text/css" href="estilo.css" />
    </head>
    <body>

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

            <ul class="meio">

                <li>

                    <ul class="busca">

                        <li>Refine sua busca</li>

                        <li>PALAVRA CHAVE <br /><input type="text" class="inp_busca" placeholder="1.8, turbo, ltz.."></li>
                        <li>LOCALIZAÇÃO <br /> 

                            <select class="inp_busca">

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

                        <li>NOVO OU USADO <br /> <br /> 

                            <input type="checkbox" value="Novos"> Novos <br />
                            <input type="checkbox" value="Usados"> Usados


                        </li>
                        <li>SELECIONE VEÍCULO <br /> 

                            <select class="inp_busca">

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
                            <select class="inp_busca">

                                <option value="">Modelo</option>
                                <option value="Van/Utilitario">Van/Utilitario</option>
                                <option value="SUV">SUV</option>
                                <option value="Hatchback">Hatchback</option>
                                <option value="Sedan">Sedan</option>
                               

                            </select>
                        </li>
                        <li>Ano <br /> <br/>

                            <select class="inp_busca2">

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
                            <select class="inp_busca3">

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
                        <li>PREÇO <br /><br/><input type="text" class="inp_busca4" placeholder="De: (min)">
                            <input type="text" class="inp_busca3" placeholder="Até: (max)"></li><br/>
                        <li>QUILOMETRAGEM <br /><br/><input type="text" class="inp_busca4" placeholder="De: (min)">
                            <input type="text" class="inp_busca3" placeholder="Até: (max)"></li>

                    </ul>

                </li>


                <li>
                    <ul class="carros">
                        <li>
                            <div id="efeito_carro">
                                <center><input type="button" value="COMPRAR" class="btn_vermelho"></center>
                            </div>
                            <img src="imagens/carros/carro01.jpg">
                            <div class="nome_carro">Renault Duster 1.6 4x2 4p...</div>
                            <div class="preco_carro">R$ 57.900,00</div>                           

                        </li>
                        <li>
                            <div id="efeito_carro">
                                <center><input type="button" value="COMPRAR" class="btn_vermelho"></center>
                            </div>
                            <img src="imagens/carros/carro02.jpg">
                            <div class="nome_carro">Fiat fiorino 1.4 furgão 2p...</div>
                            <div class="preco_carro">R$ 52.900,00</div>                           

                        </li>
                        <li>
                            <div id="efeito_carro">
                                <center><input type="button" value="COMPRAR" class="btn_vermelho"></center>
                            </div>
                            <img src="imagens/carros/carro03.jpg">
                            <div class="nome_carro">Nissan versa 1.6 16v SV 4p...</div>
                            <div class="preco_carro">R$ 57.400,00</div>                           

                        </li>
                        <li>
                            <div id="efeito_carro">
                                <center><input type="button" value="COMPRAR" class="btn_vermelho"></center>
                            </div>
                            <img src="imagens/carros/carro04.jpg">
                            <div class="nome_carro">Volkswagen golf 1.4 4p...</div>
                            <div class="preco_carro">R$ 48.700,00</div>                           

                        </li>
                        <li>
                            <div id="efeito_carro">
                                <center><input type="button" value="COMPRAR" class="btn_vermelho"></center>
                            </div>
                            <img src="imagens/carros/carro05.jpg">
                            <div class="nome_carro">Chevrolet cobalt 1.48v 4p...</div>
                            <div class="preco_carro">R$ 47.990,00</div>                           

                        </li>
                        <li>
                            <div id="efeito_carro">
                                <center><input type="button" value="COMPRAR" class="btn_vermelho"></center>
                            </div>
                            <img src="imagens/carros/carro06.jpg">
                            <div class="nome_carro">BMW 118i 16v turbo 4P...</div>
                            <div class="preco_carro">R$ 69.500,00</div>                           

                        </li>
                        <li>
                            <div id="efeito_carro">
                                <center><input type="button" value="COMPRAR" class="btn_vermelho"></center>
                            </div>
                            <img src="imagens/carros/carro07.jpg">
                            <div class="nome_carro">LandRover freelance2 6v 4p...</div>
                            <div class="preco_carro">R$ 58.500,00</div>                           

                        </li>
                        <li>
                            <div id="efeito_carro">
                                <center><input type="button" value="COMPRAR" class="btn_vermelho"></center>
                            </div>
                            <img src="imagens/carros/carro08.jpg">
                            <div class="nome_carro">X1 2.0 16V 4P 20I TURBO...</div>
                            <div class="preco_carro">R$ 158.900,00</div>                           

                        </li>
                        <li>
                            <div id="efeito_carro">
                                <center><input type="button" value="COMPRAR" class="btn_vermelho"></center>
                            </div>
                            <img src="imagens/carros/carro09.jpg">
                            <div class="nome_carro">CLA 250 2.0 SPORT 16V TURBO...</div>
                            <div class="preco_carro">R$ 164.800,00</div>                           

                        </li>
                    </ul>
                </li> 

            </ul>

        </div>
    </body>
</html>

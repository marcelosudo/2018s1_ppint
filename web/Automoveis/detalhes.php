<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detalhes - Automóveis</title>
        <link rel="stylesheet" type="text/css" href="estilo.css" />
        <script type="text/javascript" src="js/jquery-1.7.1.min.js"></script><!-- Zoom -->
        <script src='js/jquery.elevatezoom.js'></script>

        <?php include("conexao.php"); ?>

        <script type="text/javascript">

            function menu1(){

                    document.getElementById("desc1").style.display = 'block';		
                    document.getElementById("desc2").style.display = 'none';
                    document.getElementById("desc3").style.display = 'none';
                    document.getElementById("desc4").style.display = 'none';

                    document.getElementById("m2").style.border = 'none';

                    document.getElementById("m1").style.border = '1px solid #ddd';
                    document.getElementById("m1").style.borderBottomColor = 'transparent';
                    document.getElementById("m1").style.borderRadius = '4px 4px 0 0';

                    document.getElementById("m3").style.border = 'none';
                    document.getElementById("m4").style.border = 'none';

            };

            function menu2(){

                    document.getElementById("desc1").style.display = 'none';
                    document.getElementById("desc2").style.display = 'block';
                    document.getElementById("desc3").style.display = 'none';
                    document.getElementById("desc4").style.display = 'none';

                    document.getElementById("m1").style.border = 'none';
                    document.getElementById("m2").style.border = '1px solid #ddd';
                    document.getElementById("m2").style.borderBottomColor = 'transparent';
                    document.getElementById("m2").style.borderRadius = '4px 4px 0 0';
                    document.getElementById("m3").style.border = 'none';
                    document.getElementById("m4").style.border = 'none';

            };

            function menu3(){

                    document.getElementById("desc1").style.display = 'none';
                    document.getElementById("desc2").style.display = 'none';
                    document.getElementById("desc3").style.display = 'block';
                    document.getElementById("desc4").style.display = 'none';

                    document.getElementById("m1").style.border = 'none';
                    document.getElementById("m2").style.border = 'none';
                    document.getElementById("m3").style.border = '1px solid #ddd';
                    document.getElementById("m3").style.borderBottomColor = 'transparent';
                    document.getElementById("m3").style.borderRadius = '4px 4px 0 0';
                    document.getElementById("m4").style.border = 'none';

            };

            function menu4(){

                    document.getElementById("desc1").style.display = 'none';
                    document.getElementById("desc2").style.display = 'none';
                    document.getElementById("desc3").style.display = 'none';
                    document.getElementById("desc4").style.display = 'block';

                    document.getElementById("m1").style.border = 'none';
                    document.getElementById("m2").style.border = 'none';
                    document.getElementById("m3").style.border = 'none';
                    document.getElementById("m4").style.border = '1px solid #ddd';
                    document.getElementById("m4").style.borderBottomColor = 'transparent';
                    document.getElementById("m4").style.borderRadius = '4px 4px 0 0';	

            };
            
            /* ZOOM */
            
            $(document).ready(function(){
            
                $("#zoom_03").elevateZoom({gallery:'gallery_01', cursor: 'pointer', galleryActiveClass: 'active', imageCrossfade: true, loadingIcon: 'http://www.elevateweb.co.uk/spinner.gif'}); 

                //pass the images to Fancybox
                $("#zoom_03").bind("click", function(e) {  
                  var ez =   $('#zoom_03').data('elevateZoom');	
                        $.fancybox(ez.getGalleryList());
                  return false;
                });

            });
            
            /* POP */
            
            function abre_recomende(){

                    $("#pop").fadeIn(500);
                    $("#recomende").fadeIn(500);

            };

            function fecha(){
	
                    $("#pop").fadeOut(500);	
                    $("#recomende").fadeOut(500);

            };
        </script>
    </head>
    <body>
        <div id="pop" onclick="fecha();"></div>

        <?php

        $idc = $_GET['idc'];

        $sqlc = mysql_query("SELECT * FROM Veiculo where idVeiculo = '$idc'");
        $rowc = mysql_fetch_array($sqlc);

        ?>

         <div id="bg_topo">
            <div class="util">
                <a href="index.php"><img src="imagens/logo.png" id="logo"></a>

                <a href="Gerenciamento/cadastro.jsp"><div id="gerenciamento"> <img src="imagens/lock.png" style="width: 30px;margin-top: -5px;float: left;margin-right: 10px;"> Gerenciamento</div></a>

            </div>
        </div>
        
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
            
            <div class="titulo_capa">Detalhes</div>
            
            <ul class="detalhes_prod">
                <li>
                    
                    <ul class="imagens_detalhes">
                        <li>  
                            <div id="gallery_01">
                                <a href="#" class="elevatezoom-gallery" data-image="imagens/carros/carro_g.jpg" data-zoom-image="imagens/carros/carro_g.jpg"><img src="imagens/carros/carro_g.jpg" id="img_01" class="img_mini" border="0" /></a> <br /><br />
                                <a href="#" class="elevatezoom-gallery" data-image="imagens/carros/carro_g01_1.jpg" data-zoom-image="imagens/carros/carro_g01_1.jpg"><img src="imagens/carros/carro_g01_1.jpg" class="img_mini" id="img_01" border="0" /></a>  <br /><br />
                                <a href="#" class="elevatezoom-gallery" data-image="imagens/carros/carro_g01_2.jpg" data-zoom-image="imagens/carros/carro_g01_2.jpg"><img src="imagens/carros/carro_g01_2.jpg" class="img_mini" id="img_01" border="0" />  </a>                           
                            </div>
                        </li>
                        <li><img src="imagens/carros/carro_g.jpg" class="img_detalhes" id="zoom_03" data-zoom-image="imagens/carros/carro_g.jpg" /></li>
                    </ul>
                    
                </li>
                
                <li>
                    <div class="nome_carro_d"><?=$rowc['idVeiculo'] ?></div>                    
                    <div class="preco_carro_d">R$ <?=$rowc['Valor'] ?></div>
                    <div class="verdesc_carro_d"><a href="#descricao"><img src="imagens/icon_desc.JPG" /> &nbsp;Ver Descrição</a></div>
                    <div class="recomende_carro_d" onclick="abre_recomende();"><img src="imagens/icon_mail.JPG" aling="absmiddle" style="margin-top:1px; float:left;" /> &nbsp;Recomende para um amigo</div>
                    <input type="button" value="COMPRAR" class="btn_vermelho" style="margin-top:30px;">
                   
                </li>
            </ul>
            
            <div class="limpar" style="height: 100px;"></div>
            
            <div id="descricao"></div>
            <ul id="menu-desc">

                <li onClick="javascript: menu1();" style="cursor:pointer;background-color: #fff;border: 1px solid #ddd;border-bottom-color: transparent;border-radius: 4px 4px 0 0;" id="m1"><div style="height: 30px;"></div>Descrição</li>	
                <li onClick="javascript: menu2();" style="cursor:pointer;" id="m2"><div style="height: 30px;"></div>Dados do veículo</li>	
                <li onClick="javascript: menu3();" style="cursor:pointer;" id="m3"><div style="height: 30px; border-bottom-color: transparent;"></div>Modelo</li>
                <li onClick="javascript: menu4();" style="cursor:pointer;" id="m4"><div style="height: 30px; border-bottom-color: transparent;"></div>Acessórios</li>

            </ul>
            
            <div id="desc1" class="scroll txt-caracteristica">
                  <?php echo utf8_encode($rowc['Descricao']); ?> 
            </div>
            <div id="desc2" class="scroll txt-caracteristica">
                <b>Câmbio:</b> <?=$rowc['Cambio'] ?> <br>
                <b>KM:</b> <?=$rowc['Km'] ?> <br>
                <b>Final da Placa:</b> <?=$rowc['FinalPlaca'] ?><br>
                <b>Cor:</b> <?=$rowc['Cor'] ?><br>
                <b>Carroceria:</b> <?=$rowc['Carroceria'] ?> <br>
                <b>Portas:</b> <?=$rowc['Portas'] ?> <br>
            </div>
            <div id="desc3" class="scroll txt-caracteristica">
                <b>Ano:</b> <?=$rowc['Ano'] ?> 
            </div>
            <div id="desc4" class="scroll txt-caracteristica">
                Airbag<br>
                Ar condicionado<br>
                Desembaçador traseiro<br>
                Direção hidráulica<br>
                Freio ABS<br>
                Retrovisores elétricos<br>
                Rodas de liga leve<br>
                Travas elétricas<br>
                Vidros elétricos
            </div>
            
            <!-- OUTRO PROD -->
            
            <div class="titulo_capa">Outros Produtos</div>
            
             <ul class="carros">
                <?php

                    $sqlp = mysql_query("SELECT * FROM Veiculo limit 4");

                    while($rowp = mysql_fetch_array($sqlp)){


                ?>
                <li>
                    <div id="efeito_carro">
                        <center><input type="button" value="COMPRAR" class="btn_vermelho"></center>
                    </div>
                    <img src="imagens/carros/carro01.jpg">
                    <div class="nome_carro"><?=$rowc['idVeiculo'] ?></div>
                    <div class="preco_carro"><?=$rowc['Valor'] ?></div>                           

                </li>
                <?php }; ?>
            </ul>
            
        </div>
        
        
        <div class="limpar" style="height: 100px;"></div>
        
        
        <div id="recomende"> <input type="text" class="inp_busca" placeholder="E-mail:" style="width: 70%;"> <input type="button" value="ENVIAR" class="btn_vermelho"> </div>
        
        <!-- SCROLL -->

	<script type="text/javascript" src="js/scroll.js"></script>
    </body>
</html>

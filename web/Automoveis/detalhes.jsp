<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detalhes - Automóveis</title>
        <link rel="stylesheet" type="text/css" href="estilo.css" />
        <script type="text/javascript" src="js/jquery-1.7.1.min.js"></script><!-- Zoom -->
        <script src='js/jquery.elevatezoom.js'></script>

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
                    <div class="nome_carro_d">Hyundai HB20 2018</div>                    
                    <div class="preco_carro_d">R$ 50.750,00</div>
                    <div class="verdesc_carro_d"><a href="#descricao"><img src="imagens/icon_desc.JPG" /> &nbsp;Ver Descrição</a></div>
                    <div class="recomende_carro_d" onclick="abre_recomende();"><img src="imagens/icon_mail.JPG" aling="absmiddle" style="margin-top:1px; float:left;" /> &nbsp;Recomende para um amigo</div>
                    <input type="button" value="COMPRAR" class="btn_vermelho" style="margin-top:30px;">
                    <!--ul class="puglins_redes">

			<li><script src="https://connect.facebook.net/pt_BR/all.js#xfbml=1"></script><fb:like layout="button_count" href="http://www.lojaanjodaguarda.com.br/novo/detalhes_produto/berco-cielo-infanti--vermelho" send="false" width="80" height="20" show_faces="false" font="arial" class=" fb_iframe_widget" fb-xfbml-state="rendered" fb-iframe-plugin-query="app_id=&amp;container_width=0&amp;font=arial&amp;height=20&amp;href=http%3A%2F%2Fwww.lojaanjodaguarda.com.br%2Fnovo%2Fdetalhes_produto%2Fberco-cielo-infanti--vermelho&amp;layout=button_count&amp;locale=pt_BR&amp;sdk=joey&amp;send=false&amp;show_faces=false&amp;width=80"><span style="vertical-align: bottom; width: 69px; height: 20px;"><iframe name="f34172592106068" width="80px" height="20px" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" title="fb:like Facebook Social Plugin" src="https://www.facebook.com/plugins/like.php?app_id=&amp;channel=http%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter%2Fr%2FFdM1l_dpErI.js%3Fversion%3D42%23cb%3Df37bbb7645284b8%26domain%3Dwww.lojaanjodaguarda.com.br%26origin%3Dhttp%253A%252F%252Fwww.lojaanjodaguarda.com.br%252Ff3b3322721f7ca%26relation%3Dparent.parent&amp;container_width=0&amp;font=arial&amp;height=20&amp;href=http%3A%2F%2Fwww.lojaanjodaguarda.com.br%2Fnovo%2Fdetalhes_produto%2Fberco-cielo-infanti--vermelho&amp;layout=button_count&amp;locale=pt_BR&amp;sdk=joey&amp;send=false&amp;show_faces=false&amp;width=80" style="border: none; visibility: visible; width: 69px; height: 20px;" class=""></iframe></span></fb:like></li>

                        <li><iframe id="twitter-widget-0" scrolling="no" frameborder="0" allowtransparency="true" class="twitter-share-button twitter-share-button-rendered twitter-tweet-button" title="Twitter Tweet Button" src="https://platform.twitter.com/widgets/tweet_button.73a792b0fbc7ab73a8e3b3db9c36a8ac.pt.html#dnt=false&amp;id=twitter-widget-0&amp;lang=pt&amp;original_referer=http%3A%2F%2Fwww.lojaanjodaguarda.com.br%2Fnovo%2Fdetalhes_produto%2Fberco-cielo-infanti--vermelho&amp;size=m&amp;text=Anjo%20da%20Guarda&amp;time=1523494133385&amp;type=share&amp;url=http%3A%2F%2Fwww.lojaanjodaguarda.com.br%2Fnovo%2Fdetalhes_produto%2Fberco-cielo-infanti--vermelho" style="position: static; visibility: visible; width: 70px; height: 20px;"></iframe>
                            <script type="text/javascript" src="https://platform.twitter.com/widgets.js"></script></li>

                        <li><script type="text/javascript" src="https://apis.google.com/js/plusone.js" gapi_processed="true">{lang: 'pt-BR'}</script>
                            <div id="___plusone_0" style="text-indent: 0px; margin: 0px; padding: 0px; background: transparent; border-style: none; float: none; line-height: normal; font-size: 1px; vertical-align: baseline; display: inline-block; width: 32px; height: 20px;"><iframe ng-non-bindable="" frameborder="0" hspace="0" marginheight="0" marginwidth="0" scrolling="no" style="position: static; top: 0px; width: 32px; margin: 0px; border-style: none; left: 0px; visibility: visible; height: 20px;" tabindex="0" vspace="0" width="100%" id="I0_1523494133189" name="I0_1523494133189" src="https://apis.google.com/se/0/_/+1/fastbutton?usegapi=1&amp;size=medium&amp;hl=pt-BR&amp;origin=http%3A%2F%2Fwww.lojaanjodaguarda.com.br&amp;url=https%3A%2F%2Fwww.lojaanjodaguarda.com.br%2Fnovo%2Fdetalhes_produto%2Fberco-cielo-infanti--vermelho&amp;gsrc=3p&amp;ic=1&amp;jsh=m%3B%2F_%2Fscs%2Fapps-static%2F_%2Fjs%2Fk%3Doz.gapi.pt_BR.i4Gg1c7jjWQ.O%2Fm%3D__features__%2Fam%3DAQE%2Frt%3Dj%2Fd%3D1%2Frs%3DAGLTcCN8dy0dPyI0rUw8ZBaj2z30b7Rp1Q#_methods=onPlusOne%2C_ready%2C_close%2C_open%2C_resizeMe%2C_renderstart%2Concircled%2Cdrefresh%2Cerefresh&amp;id=I0_1523494133189&amp;_gfid=I0_1523494133189&amp;parent=http%3A%2F%2Fwww.lojaanjodaguarda.com.br&amp;pfname=&amp;rpctoken=42475508" data-gapiattached="true" title="G+"></iframe></div></li>

                    </ul-->
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
                  Trazendo melhorias na parte estética e também na parte mecânica o lançamento do novo HB20 2018 já é bastante aguardado no Brasil. Recentemente o hatch ganhou duas novas versões e está cada vez mais esportivo. Saiba tudo sobre os preços, fotos e versões do novo HB20 2018 e sua promessa de continuar sendo um sucesso de vendas no mercado automobilístico do país. 
            </div>
            <div id="desc2" class="scroll txt-caracteristica">
                <b>Câmbio:</b> Manual <br>
                <b>KM:</b> 29.813 <br>
                <b>Final da Placa:</b> 0<br>
                <b>Cor:</b> Cinza Chumbo<br>
                <b>Carroceria:</b> Hatchback <br>
                <b>Portas:</b> 4 <br>
                <b>Combustível:</b> Gasolina e álcool<br>
            </div>
            <div id="desc3" class="scroll txt-caracteristica">
                <b>Ano:</b> 2013/2014
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
            </ul>
            
        </div>
        
        
        <div class="limpar" style="height: 100px;"></div>
        
        
        <div id="recomende"> <input type="text" class="inp_busca" placeholder="E-mail:" style="width: 70%;"> <input type="button" value="ENVIAR" class="btn_vermelho"> </div>
        
        <!-- SCROLL -->

	<script type="text/javascript" src="js/scroll.js"></script>
    </body>
</html>

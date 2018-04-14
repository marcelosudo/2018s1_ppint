<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Empresa</title>

        <style>
            *{margin:0px; padding:0px; font-family:Helvetica, Arial, sans-serif;}

            /* Full-width input fields */
            input[type=text], input[type=password] {
                width: 86%;
                padding: 8px 20px;
                margin: 8px 26px;
                display: inline-block;
                border: 1px solid #ccc;
                box-sizing: border-box;
                font-size:16px;
            }

            /* Set a style for all buttons */
            button {
                background-color: #4CAF50;
                color: white;
                padding: 8px 20px;
                margin: 8px 20px;
                border: none;
                cursor: pointer;
                width: 100%;
                font-size:20px;
            }
            button:hover {
                opacity: 0.8;
            }

            /* Center the image and position the close button */
            .imgcontainer {
                text-align: center;
                margin: 24px 0 12px 0;
                position: relative;
            }
            .avatar {
                width: 200px;
                height:200px;
                border-radius: 50%;
            }

            /* The Modal (background) */
            .modal {
                position: absolute;
                float: right;
                top: 0;
                width: 470px;
                height: 560px;
                overflow: auto;
                background-color: rgba(0,0,0,0.4);

            }

            /* Modal Content Box */
            .modal-content {
                background-color: #fefefe;
                margin: 4% auto 15% auto;
                border: 1px solid #888;
                width: 40%; 
                padding-bottom: 30px;
            }

            /* The Close Button (x) */
            .close {
                position: absolute;
                right: 25px;
                top: 0;
                color: #000;
                font-size: 35px;
                font-weight: bold;
            }
            .close:hover,.close:focus {
                color: red;
                cursor: pointer;
            }

            /* Add Zoom Animation */
            .animate {
                animation: zoom 0.6s
            }
            @keyframes zoom {
                from {transform: scale(0)} 
                to {transform: scale(1)}
            }
        </style>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template -->
        <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/one-page-wonder.min.css" rel="stylesheet">

    </head>

    <body>




        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
            <div class="container">
                <a class="navbar-brand" href="#">Empresa</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                   
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#" onclick="document.getElementById('modal-wrapper').style.display = 'block'">Entrar</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div id="modal-wrapper" class="modal" style="width: 489px;

height: 575px;

right: 495px;">

                <form class="modal-content animate">

                    <div class="imgcontainer">
                        <span onclick="document.getElementById('modal-wrapper').style.display = 'none'" class="close" title="Close PopUp">&times;</span>
                        <img src="1.png" alt="Avatar" class="avatar">
                        <h1 style="text-align:center">LogIn</h1>
                    </div>

                    <div class="container">
                        <input type="text" placeholder="Entrar Usuario" name="uname">
                        <input type="password" placeholder="Entrar Senha" name="psw">        
                        <div><button onclick = "notImplemented()" style="position: relative; width: 386px;
left: 28px;">Entrar</button></div>
                        <div><button onclick = "getLink()" style="position: relative;
                                     top: 7px; width:386px;
left: 28px;background-color: #007bff">Cadastrar
                             
                            </button></div>
                        <input type="checkbox" style="margin:26px 30px;"> Lembrar
                        <a href="#" style="text-decoration:none; float:right; margin-right:34px; margin-top:26px;">Esqueceu a Senha?</a>
                    </div>

                </form>

            </div>
        </nav>

        <header class="masthead text-center text-white">
            <div class="masthead-content">
                <div class="container">
                    <h1 class="masthead-heading mb-0">Empresa</h1>
                    <h2 class="masthead-subheading mb-0">Confira as Novidades</h2>
                    <a href="#" class="btn btn-primary btn-xl rounded-pill mt-5">Novidades</a>
                </div>
            </div>
            <div class="bg-circle-1 bg-circle"></div>
            <div class="bg-circle-2 bg-circle"></div>
            <div class="bg-circle-3 bg-circle"></div>
            <div class="bg-circle-4 bg-circle"></div>
        </header>

        <!-- GRUPOS 6,7 -->
        <section>
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6 order-lg-2">
                        <div class="p-5">
                            <img class="img-fluid rounded-circle" src="img/01.jpg" alt="">
                        </div>
                    </div>
                    <div class="col-lg-6 order-lg-1">
                        <div class="p-5">
                            <h2 class="display-4">Bugatti Veyron</h2>
                            <p>O Bugatti Veyron EB 16.4 é um supercarro de motor central, desenhado e desenvolvido na Alemanha pelo Grupo Volkswagen e fabricado em Molsheim, na França, pela Bugatti Automobiles S.A.S. R$ 10.000.000,00</p>
                            <p>#Caro #Bugatti #Veloz</p>

                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!--GRUPOS 2,3 -->
        <section>
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <div class="p-5">
                            <img class="img-fluid rounded-circle" src="img/02.jpg" alt="">
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="p-5">
                            <h2 class="display-4">Hotel em Havana</h2>
                            <p>localizado na cidade de Havana (capital cubana) esse luxuoso hotel ira tedeixar em extase. Sua pontuação 5 estrelas e maravilhoso serviço de quarto lhe darão aquele gostinho de quero mais. Ignore o fato de que você terá a sua disposição alimentos que não estão disponiveis para a população, que em sua maioria
                                vive em regime semi-carcerário. Agende agóra mesmo sua visita! R$ 500,00/Dia</p>
                            <p>#VaiPraCuba #VivaLaRevolucion</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!--GRUPOS 4,5 -->
        <section>
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6 order-lg-2">
                        <div class="p-5">
                            <a href="beauty.jsp">
                                <img class="img-fluid rounded-circle" src="https://4.bp.blogspot.com/-sqtHn0DJ-Bk/V3_mG7xhXSI/AAAAAAAANsU/0wP_5EzHbwA7s84FWsioDWBE51sO4-MyQCLcB/s1600/produtos-beleza-toda-mulher-precisa-ter.jpeg" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-6 order-lg-1">
                        <div class="p-5">
                            <h2 class="display-4">Produtos de beleza</h2>
                            <p>Cosm�ticos em geral, tipo AVON, HINODE</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Footer -->
        <footer class="py-5 bg-black">
            <div class="container">
                <p class="m-0 text-center text-white small">Grupo 1 2018</p>
                <p class="m-0 text-center text-white small">With cofee and code at : Av. Barão do Rio Branco, 882 Jd Esplanada</p>
            </div>
            <!-- /.container -->
        </footer>

        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script>
                            // If user clicks anywhere outside of the modal, Modal will close

                            var modal = document.getElementById('modal-wrapper');
                            window.onclick = function (event) {
                                if (event.target == modal) {
                                    modal.style.display = "none";
                                }
                            }
                            function getLink()
                            {
                               
                                window.location.href = "cadastro.html";
                            }
                            
                             function notImplemented()
                            {
                               
                                alert('Em construção!');
                            }

        </script>

    </body>

</html>



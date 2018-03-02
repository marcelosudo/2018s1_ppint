<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        .topo{  
            width: 100%;
            height: 350px;
            background-image: url(http://www.sctcc.edu/sites/default/files/styles/page_hero/public/Hero%20Images/computerprogramming-hero.jpg?itok=QlD_BCVy&timestamp=1487365636);
            background-position: center;
            display:table;
            position: fixed;
            z-index: 0;
        }
        .topo h1{
            color:#fff;
            display:table-cell;
            vertical-align:middle;
        }
        .corpo{
            width: 100%;
            height: 1400px;
            z-index: 1;
            position: absolute;
            margin-top:350px; 
        }
        .apre{
            width: 60%;
            margin: 30 auto;
        }
        .nav > li > a:hover{
            background-color:#FCC;
        }
        a{
            transition: .5s ease;
        }
       a:hover{

          background:  #b9f6ca !important;
          padding: 35px;
       }
    </style>
    </head>
    <body class="bg-light">
        <div class="topo text-center">
             <h1>
                 EQUIPE ALFA
             </h1>
        </div>
        <div class="corpo bg-light" >
            <div class="container">
                <div class="apre">
                    <div id="list-example" class="list-group">
                        <a class="list-group-item list-group-item-action" href="#list-item-1">  
                            <h4 class="display-6">Murilo Santos de Lima</h4>
                            <i>murilosantos.lima@yahoo.com.br</i>
                        </a>
                        <a class="list-group-item list-group-item-action" href="#list-item-1">  
                            <h4 class="display-6">Gustavo de Castro Costa Silva</h4>
                            <i>gustavocastrocs@gmail.com</i>
                        </a>
                        <a class="list-group-item list-group-item-action" href="#list-item-1">  
                            <h4 class="display-6">Allan Rieri Santos Fernandes</h4>
                            <i>allanrieri@gmail.com</i>
                        </a>
                        <a class="list-group-item list-group-item-action" href="#list-item-1">  
                            <h4 class="display-6">William de oliveira Greco</h4>
                            <i>william.zeal@hotmail.com</i>
                        </a>
                        <a class="list-group-item list-group-item-action" href="#list-item-1">  
                            <h4 class="display-6">Julio Cesar da Cruz Deniz</h4>
                            <i>falta email</i>
                        </a>
                        <a class="list-group-item list-group-item-action" href="#list-item-1">  
                            <h4 class="display-6">Lucas Machado</h4>
                            <i>lucasmachadopaulista@hotmail.com</i>
                        </a>
                        <a class="list-group-item list-group-item-action" href="#list-item-1">  
                            <h4 class="display-6">Danilo Lima da Silva Costa</h4>
                            <i>...email</i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
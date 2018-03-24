<%-- 
    Document   : dados
    Created on : 16/03/2018, 20:24:30
    Author     : aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="../../assets/css/bootstrap-4.0.0/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="../../assets/css/bootstrap-4.0.0/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../../assets/css/automoveis/cadastro.css" rel="stylesheet" type="text/css"/>
    
        <script>
            $(document).ready(function(){
                pegarMarcas();
                $('.dropdown-toggle').dropdown();
                
                $("#txtFiltroMarca").on("keyup", function() {
                    pegarMarcas($(this).val().toLowerCase());
                });
                
                $("#txtFiltroCombustivel").on("keyup", function() {
                    pegarCombustivel($(this).val().toLowerCase());
                });
                
                $('.dropdown').on('hide.bs.dropdown', function () {
                    $(this).find('input[type="text"]').val('');
                });
                
                $('#ddlMarcar').click(function(){
                    pegarMarcas();
                });
                
                $('#ddlCombustivel').click(function(){
                    pegarCombustivel();
                });
            });
            
            function pegarMarcas(filtro){
                $('#txtFiltroMarca ~ a').remove();
                $.ajax({
                    url:"marcas.json",
                    dataType:"json",
                    success: function(dado){
                        var res = dado;
                        
                        if (filtro != undefined && filtro !== ""){
                            res = dado.filter(function(item){
                               return item.toLowerCase().indexOf(filtro) > -1; 
                            });
                        }
                        
                        res = res.slice(0, 10);
                        
                        for(var i = 0; i < res.length; i++){
                            $('#txtFiltroMarca').parent().append('<a class="dropdown-item" onclick="selecionaMarca(this)" href="#">' + res[i] + '</a>');
                        }
                    }
                });
            }
            
            function selecionaMarca(item){
                $('#ddlMarcar').text($(item).html());
            }
            
            function pegarCombustivel(filtro){
                $('#txtFiltroCombustivel ~ a').remove();
                $.ajax({
                    url:"combustivel.json",
                    dataType:"json",
                    success: function(dado){
                        var res = dado;
                        
                        if (filtro != undefined && filtro !== ""){
                            res = dado.filter(function(item){
                               return item.toLowerCase().indexOf(filtro) > -1; 
                            });
                        }
                        
                        res = res.slice(0, 10);
                        
                        for(var i = 0; i < res.length; i++){
                            $('#txtFiltroCombustivel').parent().append('<a class="dropdown-item" onclick="selecionaCombustivel(this)" href="#">' + res[i] + '</a>');
                        }
                    }
                });
            }
            
            function selecionaCombustivel(item){
                $('#ddlCombustivel').text($(item).html());
            }
            
            function pegarAcessorio(filtro){
                $.ajax({
                    url:"acessorio.json",
                    dataType:"json",
                    success: function(dado){
                        var res = dado;
                        
                        if (filtro != undefined && filtro !== ""){
                            res = dado.filter(function(item){
                               return item.toLowerCase().indexOf(filtro) > -1; 
                            });
                        }
                        
                        res = res.slice(0, 10);
                        
                        for(var i = 0; i < res.length; i++){
                            $('#txtFiltroCombustivel').parent().append('<a class="dropdown-item" onclick="selecionaCombustivel(this)" href="#">' + res[i] + '</a>');
                        }
                    }
                });
            }
            
            $("#checkall").change(function () {
                $(".checkitem").prop("checked", $(this).prop("checked"))
            })
            $(".checkitem").change(function () {
                if ($(this).prop("checked") == false) {
                    $("#checkall").prop("checked", false)
                }
                if ($(".checkitem:checked").length == $(".checkitem").length) {
                    $("#checkall").prop("checked", true)
                }
            })
        </script>
    </head>

    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-12"><h1>Dados Gerais</h1></div>
            </div>
            <div class="row">
                <div class="col-md-2"><span>Marca:</span></div>
                <div class="col-md-4">
                    <div class="dropdown">
                        <button class="btn btn-secondary btn-sm dropdown-toggle" type="button" id="ddlMarcar"
                                        data-toggle="dropdown" aria-hasopoup="true" aria-expanded="false">
                                        Selecione
                        </button>
                        <ul class="dropdown-menu">
                            <div class="filtroLista">
                                <input class="form-control" id="txtFiltroMarca" type="text" placeholder="Pesquisar...">
                            </div>
                        </ul>
                    </div>
                </div>
                <div class="col-md-2"><span>Modelo:</span></div>
                <div class="col-md-4">
                    <div class="input-group input-group-sm mb-3">
                        <input name="modelo" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2"><span>Ano:</span></div>
                <div class="col-md-4">
                    <div class="input-group input-group-sm mb-3">
                        <input name="ano" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm">
                    </div>
                </div>
                <div class="col-md-2"><span>Ano Modelo:</span></div>
                <div class="col-md-4">
                    <div class="input-group input-group-sm mb-3">
                        <input name="anomodelo" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2"><span>KM:</span></div>
                <div class="col-md-4">
                    <div class="input-group input-group-sm mb-3">
                        <input name="km" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm">
                    </div>
                </div>
                <div class="col-md-2"><span>Combustível:</span></div>
                <div class="col-md-4">
                    <div class="dropdown">
                        <button class="btn btn-secondary btn-sm dropdown-toggle" type="button" id="ddlCombustivel"
                                        data-toggle="dropdown" aria-hasopoup="true" aria-expanded="false">
                                        Selecione
                        </button>
                        <ul class="dropdown-menu">
                            <div class="filtroLista">
                                <input class="form-control" id="txtFiltroCombustivel" type="text" placeholder="Pesquisar...">
                            </div>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2"><span>Cor:</span></div>
                <div class="col-md-4">
                    <div class="input-group input-group-sm mb-3">
                        <input name="cor" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm">
                    </div>
                </div>
                <div class="col-md-2"><span>Portas:</span></div>
                <div class="col-md-4">
                    <div class="input-group input-group-sm mb-3">
                        <input name="portas" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2"><span>Cambio:</span></div>
                <div class="col-md-4">
                    <div class="input-group input-group-sm mb-3">
                        <input name="cambio" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm">
                    </div>
                </div>
                <div class="col-md-2"><span>Carroceiria:</span></div>
                <div class="col-md-4">
                    <div class="input-group input-group-sm mb-3">
                        <input name="carroceiria" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2"><span>Final Placa:</span></div>
                <div class="col-md-4">
                    <div class="input-group input-group-sm mb-3">
                        <input name="finalplaca" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-12">
                    <label for="txtDescricao">Descrição</label>
                    <textarea class="form-control" id="txtDescricao" rows="4"></textarea>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2"><span>Valor:</span></div>
                <div class="col-md-4">
                    <div class="input-group input-group-sm mb-3">
                        <input name="valor" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm">
                    </div>
                </div>
            </div>
            <br><br>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2>Acessórios</h2>
                </div>
                <div class="col-md-12">
                    <input name="valor" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Pesquisar...">
                    <div clas="col-md-12 lista-acessorio">
                        
                    </div>
                </div>
                
            </div>
        </div>
    </div>  
</body>
</html>

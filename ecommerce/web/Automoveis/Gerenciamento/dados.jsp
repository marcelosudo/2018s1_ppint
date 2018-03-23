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
              $("#txtFilterMarca").on("keyup", function() {
                    var value = $(this).val().toLowerCase();
                    $(".dropdown-menu li").filter(function() {
                      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                    });
              });
            });
            
            function pegarMarcas(filtro){
                $.ajax({
                    url:"marcas.json",
                    dataType:"json",
                    success: function(dado){
                        return;
                    }
                })
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
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="ddlMarcar"
                                        data-toggle="dropdown" aria-hasopoup="true" aria-expanded="false">
                                        Selecione
                        </button>
                        <ul class="dropdown-menu">
                                <input class="form-control" id="txtFilterMarca" type="text" placeholder="Pesquisar...">
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
                    <select>
                        <option value="Gasolina">Gasolina</option>
                        <option value="Diesel">Diesel</option>
                        <option value="Diesel">Alcool</option>
                    </select>
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
                <div class="col-md-12"><h2>Acessórios</h2>
                </div>
                <div class="container" style="margin:45px auto;">
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" id="checkall"/> Selecionar Todos/Apagar Todos
                        </label>
                    </div>
                    <hr/>
                    <div class="row">
                        <div class="col-md-2">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="checkitem" name="arCondicionado"> Ar Condicionado
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="checkitem" name="direcaoEletrica"> Direção Elétrica
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="checkitem" name="centralMultimidia"> Central Multimídia
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="checkitem" name="cameraRe"> Camera de Ré
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="checkitem" name="">
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="checkitem" name="">
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="checkitem" name="">
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="checkitem" name="">
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="checkitem" name="">
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="checkitem" name="">
                                </label>
                            </div>
                        </div>
                        <div class="col-md-10">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="checkitem" name="sensorEstacionamento"> Sensor de Estacionamento
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="checkitem" name="repetidorSeta"> Repetidor de Seta
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="checkitem" name="modoEconomico"> Modo Econômico
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="checkitem" name="alarme"> Alarme
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="checkitem" name=""> 
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="checkitem" name=""> 
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="checkitem" name=""> 
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="checkitem" name=""> 
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="checkitem" name=""> 
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="checkitem" name=""> 
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>  
</body>
</html>

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
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head

    <body>
        <div style="border:solid">
            <div class="row">
                <div class="col-md-12"><h1>Dados Gerais</h1></div>
            </div>
            <div class="row">
                <div class="col-md-2"><span>Marca:</span></div>
                <div class="col-md-4">
                    <select>
                        <option value="volvo">Volvo</option>
                        <option value="saab">Saab</option>
                        <option value="mercedes">Mercedes</option>
                        <option value="audi">Audi</option>
                    </select>
                </div>
                <div class="col-md-2"><span>Modelo:</span></div>
                <div class="col-md-4"><input type="text" name="modelo"></div>
            </div>
            <div class="row">
                <div class="col-md-2"><span>Ano:</span></div>
                <div class="col-md-4"><input type="text" name="ano"></div>
                <div class="col-md-2"><span>Ano Modelo:</span></div>
                <div class="col-md-4"><input type="text" name="anomodelo"></div>
            </div>
            <div class="row">
                <div class="col-md-2"><span>KM:</span></div>
                <div class="col-md-4"><input type="text" name="km"></div>
                <div class="col-md-2"><span>Combustível:</span></div>
                <div class="col-md-4">
                    <select>
                        <option value="Gasolina">Gasolina</option>
                        <option value="Diesel">Diesel</option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2"><span>Cor:</span></div>
                <div class="col-md-4"><input type="text" name="cor"></div>
                <div class="col-md-2"><span>Portas:</span></div>
                <div class="col-md-4"><input type="text" name="portas"></div>
            </div>
            <div class="row">
                <div class="col-md-2"><span>Cambio:</span></div>
                <div class="col-md-4"><input type="text" name="cambio"></div>
                <div class="col-md-2"><span>Carroceiria:</span></div>
                <div class="col-md-4"><input type="text" name="carroceiria"></div>
            </div>
            <div class="row">
                <div class="col-md-2"><span>Final Placa:</span></div>
                <div class="col-md-4"><input type="text" name="finalplaca"></div>
            </div>
            <div class="row">
                <div class="col-md-2"><span>Descrição:</span></div>
                <div class="col-md-10"><textarea rows="4" cols="50"></textarea>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2"><span>Valor:</span></div>
                <div class="col-md-4"><input type="text" name="valor"></div>
            </div>
        </div>
    </body>
</html>

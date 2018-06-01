<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Produtos de Beleza</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <style rel="stylesheet" href="assets/css/beauty.css"></style>
    </head>
    <body>
        <jsp:include page="partials/beauty/menu.jsp" />

        <div class="container">
            <jsp:include page="partials/beauty/carousel.jsp" />
            <jsp:include page="partials/beauty/filter_summary.jsp" />
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <jsp:include page="partials/beauty/filter.jsp" />
                </div>
                <div class="col-md-9">
                    <div class="row" id="produtos">
                        carregando...
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <jsp:include page="partials/beauty/banners.jsp" />
        </div>

        <script type="text/x-handlebars-template" id="product-card">
            {{#each produtos}}
                <div class="col-md-4">
                    <jsp:include page="partials/beauty/product_card.jsp" />
                </div>
            {{/each}}
        </script>

        <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="assets/scripts/handlebars.js"></script>        
        <script src="assets/scripts/beauty.js"></script>

    </body>
</html>

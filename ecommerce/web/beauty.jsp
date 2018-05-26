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
            <jsp:include page="partials/beauty/banners.jsp" />
            <jsp:include page="partials/beauty/filter_summary.jsp" />
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <jsp:include page="partials/beauty/filter.jsp" />
                </div>
                <div class="col-md-9">
                    <div class="row">
                        <c:forEach var="produto" items="${produtos}">
                            <div class="col-md-4">
                                <jsp:include page="partials/beauty/product_card.jsp" />
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>

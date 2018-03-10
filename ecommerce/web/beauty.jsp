<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
<head>
  <title>Produtos de Beleza</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <style rel="stylesheet" href="assets/css/beauty.css"></style>
</head>
<body>
  <jsp:include page="partials/beauty/header.jsp" />
  <jsp:include page="partials/beauty/menu.jsp" />
  <jsp:include page="partials/beauty/carousel.jsp" />
  <jsp:include page="partials/beauty/banners.jsp" />
  <jsp:include page="partials/beauty/filter_summary.jsp" />

  <div class="container">
    <div class="row">
      <div class="col-md-4">
        <jsp:include page="partials/beauty/filter.jsp" />
      </div>
      <div class="col-md-8">
        <c:forEach var = "i" begin = "0" end = "8">
          <jsp:include page="partials/beauty/product_card.jsp" />
        </c:forEach>
      </div>
    </div>
  </div>
</body>
</html>

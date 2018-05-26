$(document).ready(function () {
    $.ajax({ url: '/ecommerce/ProdutosBelezaAction', dataType: 'json' }).done(function (data) {
        var template = Handlebars.compile($('#product-card').html());
        $('#produtos').html(template(data));
    });
});
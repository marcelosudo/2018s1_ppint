$(document).ready(function () {
    $.ajax({url: '/ecommerce/ProdutosBelezaAction', dataType: 'json'}).done(function (data) {
        var template = Handlebars.compile($('#product-card').html());

        $('#produtos').html(template(data));
        $('.js-purchase-button').on('click', purchaseButtonClickHandle);
    });

    function purchaseButtonClickHandle(e) {
        var data = $(this).data();

        $.ajax({
            method: 'post',
            url: '/ecommerce/VendaBelezaAction',
            data: {
                produto: data.id
            },
            dataType: 'json'
        }).done(function (data) {
            if (data.sucesso) {
                alert('Compra efeturada com sucesso!');
            } else {
                alert('Erro ao efetuar compra');
            }
        }).fail(function () {
            alert('Erro ao efetuar compra');
        });
    }
    ;
});
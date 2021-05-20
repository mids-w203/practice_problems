$( document ).on('turbolinks:load',function() {
    $('.ui.dropdown').dropdown();
    $('table').addClass('ui very basic celled centered table');

    $('.reply.comment').click(function(){
        var elm = $(this).parent().next();

        if(elm.is(':visible'))
            elm.hide();
        else {
            $('.reply.form').hide();
            elm.show();
        }
    });
});
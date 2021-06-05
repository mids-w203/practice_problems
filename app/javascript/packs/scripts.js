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
    $('.edit.form').hide();
    $('.edit.comment').click(function(){
        var text = $(this).parent().parent().children('.text');
        var form = $(this).parent().parent().children('.edit.form');

        if(form.is(':visible')) {
            form.hide();
            text.show();
        }
        else {
            form.show();
            text.hide();
        }
    });
    
    $('.ui.tag.selection.dropdown')
        .dropdown({
            apiSettings: {
                url: '/slack_users',
            },
            filterRemoteData: true
        })
    ;
});
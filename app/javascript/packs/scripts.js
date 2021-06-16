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

    // $('.editor-preview-side').remove();
    // $('a.fa.fa-columns.no-disable.no-mobile').click(function(){
    //     if($('.side-preview').is(':visible'))
    //         $('.side-preview').hide();
    //     else
    //     $('.side-preview').show();
    // });
    // $('a.fa.fa-arrows-alt.no-disable.no-mobile').click(function(){
    //     if($('.side-preview').is(':visible'))
    //         $('.side-preview').hide();
    // });
    
    // $('a.fa.fa-eye.no-disable')
    //     .replaceWith('<a title="Preview (Ctrl-P)" tabindex="-1" class="fa fa-eye preview"></a>')
    // ;

    // $('a.fa.fa-eye.preview').click(function(){
    //     var text = $(this).parent().next().find('.CodeMirror-code').text();
    //     $.ajax({
    //         url: '/preview',
    //         data: "text="+text,
    //         dataType: 'html',
    //         success: function(response) {
    //             $('.side-preview').html(response);
    //         }
    //     });

    // });
});
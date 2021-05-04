$( document ).ready(function() {
    $('.solution.button').click(function() {
        $(this).parent().find('.ui.modal').modal('show');
    });    
});
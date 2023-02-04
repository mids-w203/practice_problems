$( document ).ready(function() {
    $('.ui.accordion')
    .accordion()
    ;
    $('.concepts.button').click(function(){
        $('.ui.concepts.modal')
         .modal('show')
        ;
    });
    $('.ui.dropdown').dropdown();
    $('table').addClass('ui very basic celled centered table');  
    
});
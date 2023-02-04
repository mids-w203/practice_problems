$( document ).ready(function() {
    $('.ui.accordion').accordion({
        selector: {
            trigger: '.title button'
        }
    });
    $('.concepts.button').click(function(){
        $('.ui.concepts.modal')
         .modal('show')
        ;
    });
    $('.ui.dropdown').dropdown();
    $('table').addClass('ui very basic celled centered table');  
    
});
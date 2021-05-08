$( document ).ready(function() {
    $('.ui.accordion').accordion({
        selector: {
            trigger: '.title button'
        }
    });

    $('.ui.dropdown').dropdown();
    $('table').addClass('ui very basic collapsing celled centered table');  
});
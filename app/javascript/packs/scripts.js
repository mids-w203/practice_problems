$( document ).on('turbolinks:load',function() {
    $('.ui.accordion').accordion({
        selector: {
            trigger: '.title button'
        }
    });

    $('.ui.dropdown').dropdown();
    $('table').addClass('ui very basic celled centered table');  
});
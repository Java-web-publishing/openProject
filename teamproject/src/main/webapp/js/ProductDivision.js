$(document).ready(function(){
    $.ajax({
        url:'html/ProductDivision_section.html',
        async: false,
        success: function(result){
            $('.page_ajax').html(result);
        }
    });
});
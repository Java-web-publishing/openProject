$(document).ready(function(){
    $.ajax({
        url:'html/header.html',
        async: false,
        success: function(result){
            $('header').html(result);
        }
    });
    
    $.ajax({
        url:'html/ProductDivisionA_section.html',
        async: false,
        success: function(result){
            $('.page_ajax').html(result);
        }
    });

	$("#page_A").click(function(){
		$.ajax({
	        url:'html/ProductDivisionA_section.html',
	        async: false,
	        success: function(result){
	            $('.page_ajax').html(result);
	        }
	    });
	});
	
	$("#page_B").click(function(){
		$.ajax({
	        url:'html/ProductDivisionB_section.html',
	        async: false,
	        success: function(result){
	            $('.page_ajax').html(result);
	        }
	    });
	});
	
	$("#page_C").click(function(){
		$.ajax({
	        url:'html/ProductDivisionC_section.html',
	        async: false,
	        success: function(result){
	            $('.page_ajax').html(result);
	        }
	    });
	});
	
	$("#page_D").click(function(){
		$.ajax({
	        url:'html/ProductDivisionD_section.html',
	        async: false,
	        success: function(result){
	            $('.page_ajax').html(result);
	        }
	    });
	});
	
	$("#page_E").click(function(){
		$.ajax({
	        url:'html/ProductDivisionE_section.html',
	        async: false,
	        success: function(result){
	            $('.page_ajax').html(result);
	        }
	    });
	});
	
	$("#page_F").click(function(){
		$.ajax({
	        url:'html/ProductDivisionF_section.html',
	        async: false,
	        success: function(result){
	            $('.page_ajax').html(result);
	        }
	    });
	});
	
	$("#page_G").click(function(){
		$.ajax({
	        url:'html/ProductDivisionG_section.html',
	        async: false,
	        success: function(result){
	            $('.page_ajax').html(result);
	        }
	    });
	});
	
	$("#page_H").click(function(){
		$.ajax({
	        url:'html/ProductDivisionH_section.html',
	        async: false,
	        success: function(result){
	            $('.page_ajax').html(result);
	        }
	    });
	});
	
	$("#page_I").click(function(){
		$.ajax({
	        url:'html/ProductDivisionI_section.html',
	        async: false,
	        success: function(result){
	            $('.page_ajax').html(result);
	        }
	    });
	});
	
	$("#page_J").click(function(){
		$.ajax({
	        url:'html/ProductDivisionJ_section.html',
	        async: false,
	        success: function(result){
	            $('.page_ajax').html(result);
	        }
	    });
	});
	
	$("#page_K").click(function(){
		$.ajax({
	        url:'html/ProductDivisionK_section.html',
	        async: false,
	        success: function(result){
	            $('.page_ajax').html(result);
	        }
	    });
	});
	
	$("#page_L").click(function(){
		$.ajax({
	        url:'html/ProductDivisionL_section.html',
	        async: false,
	        success: function(result){
	            $('.page_ajax').html(result);
	        }
	    });
	});
});

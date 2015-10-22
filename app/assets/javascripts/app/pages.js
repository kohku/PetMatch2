
var pagesModule = (function(){

	var callError = function(response){
		if (response.status === 500){
			$('#flash').trigger('broadcast', { message: 'Service unavailable. Please try later.', type: 'error' });
		}
		else{
			$('#flash').trigger('broadcast', { message: response.responseText, type: 'error' });
		}
	};

	return {
		init: function(){
			// controller-wide code
			console.log("Controller-specific JavaScript on the pages controller.");
		},
		
		show: function(){
			// action-specific code
			console.log("Page-specific JavaScript on the pages/show controller.");
			if (App) App.initSliders();
			if (Index) Index.initParallaxSlider();
		},

		edit: function(){
			// action-specific code
			console.log("Page-specific Javascript on the page/:id/edit controller.");

			$.fn.editable.defaults.mode = 'inline';
			$.fn.editable.defaults.ajaxOptions = {type: 'PATCH',dataType: 'json'};
			$.fn.editable.defaults.emptytext = 'None';

			$('#title').editable({
				params: function(params){
					return { page : { title: params.value }};
				},
				error: callError
			});
			$('#slug').editable({
				params: function(params){
					return { page : { slug: params.value }};
				},
				error: callError
			});
			$('#content').editable({
				params: function(params){
					return { page : { content: params.value }};
				},
				error: callError
			});

			$('.editable.editable-click[data-type="text"]').hover(function(){
				$(this).append('<span class="editable-add-on"><i class="icon-edit"></i></span>');
			}, function(){
				$(this.parentNode).find('span.editable-add-on').remove();
			});
		}
	};
})();


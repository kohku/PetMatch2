
var pagesModule = (function(){

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
			console.log("Page-specific JavaScript on the pages/edit controller.");
			var alert = '<div class="alert"><button type="button" class="close" data-dismiss="alert">×</button><strong>{0}</strong></div></div>';
			var alert_error = '<div class="alert alert-error"><button type="button" class="close" data-dismiss="alert">×</button><strong>{0}</strong></div></div>';
			var alert_success = '<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert">×</button><strong>{0}</strong></div></div>';
			var alert_info = '<div class="alert alert-info"><button type="button" class="close" data-dismiss="alert">×</button><strong>{0}</strong></div></div>';

			console.log("Page-specific Javascript on the page/:id/edit controller.")
			$.fn.editable.defaults.mode = 'inline';
			$.fn.editable.defaults.ajaxOptions = {type: 'PATCH',dataType: 'json'};
			$.fn.editable.defaults.emptytext = 'None';

			$('#title').editable({
				params: function(params){
					return { page : { title: params.value }};
				},
				success: function(){
					$('#flash').append(alert_info.format('Saved'));
				},
				error: function(response, newValue){
					if (response.status === 500){
						$('#flash').append(alert_error.format('Service unavailable. Please try later.'));
					}
					else{
						$('#flash').append(alert_error.format(response.responseText));
					}
				}
			});
			$('#slug').editable({
				params: function(params){
					return { page : { slug: params.value }};
				}
			});
			$('#content').editable({
				params: function(params){
					return { page : { content: params.value }};
				}
			});

			$('.editable.editable-click[data-type="text"]').hover(function(){
				$(this).append('<span class="editable-add-on"><i class="icon-edit"></i></span>');
			}, function(){
				$(this.parentNode).find('span.editable-add-on').remove();
			});
		}
	};
})();


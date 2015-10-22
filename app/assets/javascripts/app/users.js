
var usersModule = (function(){

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
			console.log("Controller-specific JavaScript on the users controller.");
		},
		show: function(){
			// action-specific code
			console.log("Page-specific Javascript on the admin/users/show controller.")

			$.fn.editable.defaults.mode = 'inline';
			$.fn.editable.defaults.ajaxOptions = {type: 'PATCH',dataType: 'json'};
			$.fn.editable.defaults.emptytext = 'None';

			$('#name').editable({
				params: function(params){
					return { user : { name: params.value }};
				},
				error: callError
			});
			
			$('#location').editable({
				params: function(params){
					return { user : { location: params.value }};
				},
				error: callError
			});

			$('#url').editable({
				params: function(params){
					return { user : { url: params.value }};
				},
				error: callError
			});

			$('#roles').editable({
				source: '/admin/users/all_roles',
				params: function(params){
					return { user : { roles : params.value }};
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


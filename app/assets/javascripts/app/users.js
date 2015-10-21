
var usersModule = (function(){

	return {
		init: function(){
			// controller-wide code
			console.log("Controller-specific JavaScript on the users controller.");
		},
		show: function(){
			// action-specific code
			console.log("Page-specific JavaScript on the users/show controller.");

			var alert = '<div class="alert"><button type="button" class="close" data-dismiss="alert">×</button><strong>{0}</strong></div></div>';
			var alert_error = '<div class="alert alert-error"><button type="button" class="close" data-dismiss="alert">×</button><strong>{0}</strong></div></div>';
			var alert_success = '<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert">×</button><strong>{0}</strong></div></div>';
			var alert_info = '<div class="alert alert-info"><button type="button" class="close" data-dismiss="alert">×</button><strong>{0}</strong></div></div>';

			console.log("Page-specific Javascript on the admin/users/show controller.")
			$.fn.editable.defaults.mode = 'inline';
			$.fn.editable.defaults.ajaxOptions = {type: 'PATCH',dataType: 'json'};
			$.fn.editable.defaults.emptytext = 'None';

			$('#name').editable({
				params: function(params){
					return { user : { name: params.value }};
				},
				//success: function(){
				//	$('#flash').append(alert_info.format('Saved'));
				//},
				error: function(response, newValue){
					if (response.status === 500){
						('#flash').append(alert_error.format('Service unavailable. Please try later.'));
					}
					else{
						('#flash').append(alert_error.format(response.responseText));
					}
				}
			});
			$('#location').editable({
				params: function(params){
					return { user : { location: params.value }};
				}
			});
			$('#url').editable({
				params: function(params){
					return { user : { url: params.value }};
				}
			});

			$('#roles').editable({
				source: '/admin/users/all_roles',
				params: function(params){
					return { user : { roles : params.value }};
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


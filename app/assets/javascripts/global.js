// Garger-Irish implementation
PETMATCH = {
	common: {
		init: function(){
			// application-wide code
			console.log("Application-wide JavaScript.");
			App.init();

			if (!Modernizr.touch || !Modernizr.inputtypes.date) {
		        $('input[type=date]')
		            .attr('type', 'text')
		            .datepicker({
		                // Consistent format with the HTML5 picker
		                dateFormat: 'yy-mm-dd'
            		});
    		}
		}
	},

	// pets controller
	pets: {
		init: function(){
			// controller-wide code
			console.log("Controller-specific JavaScript on the pets controller.");
		},

		new: function(){
			// action-specific code
			console.log("Page-specific JavaScript on the pets/new controller.");

			PETTYPES.call.loader();
		},

		edit: function(){
			// action-specific code
			console.log("Page-specific JavaScript on the pets/edit controller.");

			PETTYPES.call.loader();
		}
	},

	// admin/users
	users:  {
		show: function(){
			var alert = '<div class="alert"><button type="button" class="close" data-dismiss="alert">×</button><strong>{0}</strong></div></div>';
			var alert_error = '<div class="alert alert-error"><button type="button" class="close" data-dismiss="alert">×</button><strong>{0}</strong></div></div>';
			var alert_success = '<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert">×</button><strong>{0}</strong></div></div>';
			var alert_info = '<div class="alert alert-info"><button type="button" class="close" data-dismiss="alert">×</button><strong>{0}</strong></div></div>';

			console.log("Page-specific Javascript on the admin/users/show controller.")
			debugger;
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

			$('.editable.editable-click').hover(function(){
				$(this).append('<span class="editable-add-on"><i class="icon-edit"></i></span>');
			}, function(){
				$(this.parentNode).find('span.editable-add-on').remove();
			});
		}
	}
};

UTIL = {
	exec: function(controller, action){
		var ns = PETMATCH,
			action = (action === undefined) ? "init" : action;

		if (controller !== "" && ns[controller] && typeof ns[controller][action]== "function"){
			ns[controller][action]();
		}
	},

	init: function() {
		var body = document.body,
			controller = body.getAttribute("data-controller"),
			action = body.getAttribute("data-action");

		UTIL.exec("common");
		UTIL.exec(controller);
		UTIL.exec(controller, action);
	}
};

$(document).ready(UTIL.init);
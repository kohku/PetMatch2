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

    		// register for flash broadcasting.
    		$('#flash').on('broadcast', function(event, flash){
				var alertTemplate = '<div class="alert {0}"><button type="button" class="close" data-dismiss="alert">×</button><strong>{1}</strong></div></div>';
    			switch(flash.type){
    				case 'error':
    					$(this).append(alertTemplate.format('alert-error', flash.message));
    					break;
    				case 'success':
    					$(this).append(alertTemplate.format('alert-success', flash.message));
    					break;
    				case 'info':
    					$(this).append(alertTemplate.format('alert-info', flash.message));
    					break;
    				default:
    					$(this).append(alertTemplate.format('', flash.message));
    					break;
    			}
    		});
		}
	},

	// pets controller
	pets: petsModule,

	// users controller
	users: usersModule,

	// pages controller
	pages: pagesModule
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
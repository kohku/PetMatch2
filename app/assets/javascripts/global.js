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
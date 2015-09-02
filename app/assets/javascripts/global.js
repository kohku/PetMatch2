// Garger-Irish implementation
PETMATCH = {
	common: {
		init: function(){
			// application-wide code
			console.log("Application-wide JavaScript.");
			App.init();
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
			console.log("Page-specific JavaScript on the pets/home page.");
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
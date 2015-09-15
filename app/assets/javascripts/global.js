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
			console.log("Page-specific JavaScript on the pets/home page.");
			var placeholder = '<option value="" disabled selected>Select one...</option>';
			var loading = '<option value="">Loading...</option>';

			$('#pet_type').on('change', function(){
				pet_type_id = $(this).val();
				if (pet_type_id == undefined || pet_type_id == ""){
					$('#pet_breed').empty().append(placeholder);
					return;
				}
				$.ajax({
					url: '/pet-types/{0}/pet-breeds.json'.format(pet_type_id),
					method: 'GET',
					dataType: 'json',
					beforeSend: function(data){
						$('#pet_breed').empty().append(loading);
					}
				}).done(function(data){
					var breeds = $('#pet_breed');
					breeds.empty();
					data.forEach(function(entry){
						breeds.append('<option value="{0}">{1}</option>'.format(entry.id, entry.name));
					});
					if ($('#pet_breed option').length > 0) {
						breeds.prepend(placeholder);
					} else {
						breeds.prepend('<option value="" disabled selected>No breeds available.</option>');
					}
				}).fail(function(){
					$('#pet_breed').empty().append('<option value="" disabled selected>Loading failed.</option>');
				});
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
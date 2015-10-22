
var petsModule = (function(){
	var petTypesUrl = '/pet-types/{0}/pet-breeds.json';

	return {
		init: function(){
			// controller-wide code
			console.log("Controller-specific JavaScript on the pets controller.");
		},
		new: function(){
			// action-specific code
			console.log("Page-specific JavaScript on the pets/new controller.");

			this.startCategorization('#pet_type', '#pet_breed');
		},
		edit: function(){
			// action-specific code
			console.log("Page-specific JavaScript on the pets/edit controller.");

			this.startCategorization('#pet_type', '#pet_breed');
		},
		match: function(){
			// action-specific code
			console.log("Page-specific JavaScript on the pets/match controller.");

			this.startCategorization('#pet_type', '#pet_breed');
		},

		// private stuff
		startCategorization: function(petTypeId, petBreedId){
			var placeholder = '<option value="" disabled selected>Please select</option>';
			var loading = '<option value="">Loading...</option>';
			var loadingFailed = '<option value="" disabled selected>Loading failed.</option>';
			var noBreedsAvailable = '<option value="" disabled selected>No breeds available.</option>';
			var option = '<option value="{0}">{1}</option>';

			$(petTypeId).on('change', function(){
				pet_type_id = $(this).val();
				if (pet_type_id == undefined || pet_type_id == ""){
					$(petBreedId).trigger('loading/reset');
					return;
				}
				$(petBreedId).trigger('loading/call', pet_type_id);
			});

			$(petBreedId).on('loading/call', function(event, id){
				$.ajax({
					url: petTypesUrl.format(pet_type_id),
					method: 'GET',
					dataType: 'json',
					beforeSend: function(data){
						$(petBreedId).trigger('loading/init');
					}
				}).done(function(data){
					$(petBreedId).trigger('loading/success', { data: data });
				}).fail(function(){
					$(petBreedId).trigger('loading/failed');					
					$('#flash').trigger('broadcast', { message: 'Service unavailable. Please try later.', type: 'error' });
				});
			});

			$(petBreedId).on('loading/success', function(event, response){
				$(this).empty();
				response.data.forEach($.proxy(function(entry){
					$(this).append(option.format(entry.id, entry.name));
				}, this));
				if ($('{0} option'.format(petBreedId)).length > 0) {
					$(this).prepend(placeholder);
				} else {
					$(this).prepend(noBreedsAvailable);
				}
			});

			$(petBreedId).on('loading/failed', function(){
				$(this).empty().append(loadingFailed);
			});

			$(petBreedId).on('loading/init', function(){
				$(this).empty().append(loading);
			});

			$(petBreedId).on('loading/reset', function(){
				$(this).empty().append(placeholder);
			});
		}		
	};
})();


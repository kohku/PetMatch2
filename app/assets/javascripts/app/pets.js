
var petsModule = (function(){

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
			var placeholder = '<option value="" disabled selected>{0}</option>'.format(
				$('{0} option[value=""]'.format(petBreedId)).length > 1 ? $('{0} option[value=""]'.format(petBreedId)).text() : "Please select");
			var loading = '<option value="">Loading...</option>';

			$(petTypeId).on('change', function(){
				pet_type_id = $(this).val();
				if (pet_type_id == undefined || pet_type_id == ""){
					$(petBreedId).empty().append(placeholder);
					return;
				}
				$.ajax({
					url: '/pet-types/{0}/pet-breeds.json'.format(pet_type_id),
					method: 'GET',
					dataType: 'json',
					beforeSend: function(data){
						$(petBreedId).empty().append(loading);
					}
				}).done(function(data){
					var breeds = $(petBreedId);
					breeds.empty();
					data.forEach(function(entry){
						breeds.append('<option value="{0}">{1}</option>'.format(entry.id, entry.name));
					});
					if ($('{0} option').format(petBreedId).length > 0) {
						breeds.prepend(placeholder);
					} else {
						breeds.prepend('<option value="" disabled selected>No breeds available.</option>');
					}
				}).fail(function(){
					$(petBreedId).empty().append('<option value="" disabled selected>Loading failed.</option>');
				});
			});
		}		
	};
})();


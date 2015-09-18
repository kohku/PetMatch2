var PETTYPES = PETTYPES || {};

PETTYPES.call = {
	loader: function(){

		var placeholder = '<option value="" disabled selected>{0}</option>'.format(
			$('#pet_breed option[value=""]').length > 1 ? $('#pet_breed option[value=""]').text() : "Please select");
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
};
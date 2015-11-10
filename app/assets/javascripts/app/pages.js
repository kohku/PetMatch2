
var pagesModule = (function(){

	var newestMembersUrl = '/pets/newest.json';
	var newestTemplate = 
			'<li class="span3">\
				<div class="thumbnail-style thumbnail-kenburn">\
	            	<div class="thumbnail-img">\
	                    <div class="overflow-hidden"><img src="{{profile_image_id}}" alt=""></div>\
	                    <a class="btn-more hover-effect" href="/pets/{{id}}">{{name}}</a>\
	                </div>\
	                <h3><a class="hover-effect" href="#">{{pet_type_id}}</a></h3>\
	                <p>{{description}}</p>\
	            </div>\
	        </li>';

	var callError = function(response){
		if (response.status === 500){
			$('#flash').trigger('broadcast', { message: 'Service unavailable. Please try later.', type: 'error' });
		}
		else{
			$('#flash').trigger('broadcast', { message: response.responseText, type: 'error' });
		}
	};

	var newestMembers = function(newMembersId){
		if ($(newMembersId).length == 0)
			return; 

		$(newMembersId).on('loading/call', function(){
			$.ajax({
				url: newestMembersUrl,
				method: 'GET',
				dataType: 'json',
			}).done(function(data){
				$(newMembersId).trigger('loading/success', { data: data });
			}).fail(function(){
				$('#flash').trigger('broadcast', { message: 'Service unavailable. Please try later.', type: 'error' });
			});
		});

		$(newMembersId).on('loading/success', function(event, response){
			Mustache.parse(newestTemplate);
			$(this).append('<ul class="thumbnails">');
			response.data.forEach($.proxy(function(entry){
				var rendered = Mustache.render(newestTemplate, entry);
				$(this).append(rendered);
			}), this);
			$(this).append('</ul>');
		});

		$(newMembersId).trigger('loading/call');
	};

	return {
		init: function(){
			// controller-wide code
			console.log("Controller-specific JavaScript on the pages controller.");
		},
		
		show: function(){
			// action-specific code
			console.log("Page-specific JavaScript on the pages/show controller.");
			if (App) App.initSliders();
			if (Index) Index.initParallaxSlider();

			// Latest members
			newestMembers('div#new_members');
		},

		edit: function(){
			// action-specific code
			console.log("Page-specific Javascript on the page/:id/edit controller.");

			$.fn.editable.defaults.mode = 'inline';
			$.fn.editable.defaults.ajaxOptions = {type: 'PATCH',dataType: 'json'};
			$.fn.editable.defaults.emptytext = 'None';

			$('#title').editable({
				params: function(params){
					return { page : { title: params.value }};
				},
				error: callError
			});
			$('#slug').editable({
				params: function(params){
					return { page : { slug: params.value }};
				},
				error: callError
			});
			$('#content').editable({
				params: function(params){
					return { page : { content: params.value }};
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


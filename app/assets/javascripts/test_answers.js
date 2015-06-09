var ready;
ready = function() {

	$(document).on('click', '.js-checkbox', function() {
		$(this).closest('.js-checkbox-container').find('.js-checkbox').not(this).prop('checked', false)
	});

};

$(document).ready(ready);
$(document).on('page:load', ready);
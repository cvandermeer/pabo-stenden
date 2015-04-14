var ready;
ready = function() {

	$('.notice, .alert').delay(2000).fadeOut('slow');

};

$(document).ready(ready);
$(document).on('page:load', ready);
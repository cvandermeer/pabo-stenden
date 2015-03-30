var ready;
ready = function() {

	$(function(){
		$('#appointment_date').datepicker({
			dateFormat: 'dd-mm-yy'
		});
	});


};

$(document).ready(ready);
$(document).on('page:load', ready);
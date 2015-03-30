var ready;
ready = function() {

	$(function(){
		$('#appointment_date').datepicker({
			dateFormat: 'dd-mm-yy'
		});
	});

	$('#appointment_start_time').timepicker({ 'timeFormat': 'H:i' });
	$('#appointment_end_time').timepicker({ 'timeFormat': 'H:i'});

};

$(document).ready(ready);
$(document).on('page:load', ready);
jQuery(document).ready(function ($) {
	$('.module-container__dismissible').each(function () {
		if ($.cookie('module-container__dismissible--' + this.id)) {
			$(this).removeClass('fade in').alert('close');
		}
	}).on('closed.bs.alert', function () {
		$.cookie('module-container__dismissible--' + this.id, 'true', { expires: 30, });
	});
});

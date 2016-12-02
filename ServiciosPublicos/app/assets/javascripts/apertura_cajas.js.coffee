# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
	$('#apertura_cajas').DataTable
	    'language': 'url': '//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Spanish.json'
	    bPaginate: false,
	    bInfo: false,
        bProcessing: true,
        bServerSide: true
	return
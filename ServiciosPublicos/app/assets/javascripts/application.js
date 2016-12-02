// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require dataTables/jquery.dataTables
//= require dataTables/bootstrap/3/jquery.dataTables.bootstrap
//= require dataTables/jquery.dataTables
//= require turbolinks

//= require autocomplete-rails
//= require bootstrap-sprockets
//= require select2-full
// require client_side_select2
//= require jquery_nested_form
//= require bootstrap-datepicker
//= require bootstrap-datepicker/locales/bootstrap-datepicker.es.js
//= require app
//= require_tree . 

$(document).ready(function(){
    $('#fecha_anterior').datepicker({
      isRTL: false,
      format: 'dd/mm/yyyy',
      autoclose:true,
      orientation: 'bottom',
      language: 'es'
  });
});

$(document).ready(function(){
    $('#fecha_actual').datepicker({
      isRTL: false,
      format: 'dd/mm/yyyy',
      autoclose:true,
      orientation: 'bottom',
      language: 'es'
  }); 
});

$(document).ready(function(){
  $("#medidorSelect").select2({
    theme: "bootstrap"
  });
});

$(document).ready(function(){
  $("#usuarioSelect").select2({
    theme: "bootstrap"
  });
});

$(document).ready(function(){
  $("#servicioSelect").select2({
    theme: "bootstrap"
  });
});

$(document).ready(function(){
        $(function() {
            $( "#minrango" ).datepicker({
    isRTL: false,
    format: 'dd/mm/yyyy',
    autoclose:true,
    language: 'es'
    });
        });

        $(function() {
            $( "#maxrango" ).datepicker({
    isRTL: false,
    format: 'dd/mm/yyyy',
    autoclose:true,
    language: 'es'
    });
  });
});

$(document).ready(function() {
      var table = $('#e1').DataTable();
 
      // Add event listeners to the two range filtering inputs
      $('#minrango, #maxrango').keyup( function() { table.draw(); 
      }); 
} );


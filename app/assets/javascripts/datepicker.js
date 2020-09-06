$(function() {
  $( ".datepicker" ).datepicker({
    numberOfMonths: 3,
    showButtonPanel: true,
    minDate: new Date(),
    format: "dd-mm-yyyy",
  });
});
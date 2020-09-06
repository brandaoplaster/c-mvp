$(function() {
  $( ".datepicker" ).datepicker({
    numberOfMonths: 3,
    showButtonPanel: true,
    minDate: new Date(),
    dateFormat: "dd-mm-yyyy",
  });
});
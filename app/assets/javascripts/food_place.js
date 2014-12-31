$(document).ready(function() {
  $("#cselection").on("change", function() {
    $.ajax({
      url: "instalments/get_bills",
      type: "GET",
      dataType: "script",
      data: {
        client_id: $('#cselection option:selected').val()
      }
    });
  });
  $('#filter-date').datepicker({
    language: "es",
    autoclose: true,
    format: "yyyy/mm/dd"
  });
  // $('#adate').datepicker({
  //   language: "es",
  //   autoclose: true,
  //   format: "yyyy/mm/dd"
  // });
  $('#filter-date').on('changeDate', function() {
    $('#filter-form').submit();
  });

});
$(document).ready ->
  $('#project_list_startdate, #project_list_enddate').change ->
    start_date = $.datepicker.parseDate('yy-mm-dd', $('#project_list_startdate').val())
    end_date = $.datepicker.parseDate('yy-mm-dd', $('#project_list_enddate').val())
    if end_date > start_date
      oneDay = 24 * 60 * 60 * 1000
      diff = 0
      diff = Math.round(Math.abs((end_date.getTime() - start_date.getTime()) / oneDay))
      $('#project_list_duration').val diff
    return
  return  
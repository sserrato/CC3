# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $("#job_job_start").datepicker({dateFormat: 'yy-mm-dd'})
  $("#job_job_end").datepicker({dateFormat: 'yy-mm-dd'})

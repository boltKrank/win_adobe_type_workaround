plan win_adobe_type_workaround::workarounds(
  Boolean $rollback = false,
) {

  # process workarounds
  run_task('win_adobe_type_workaround::disable_preview_details_panes', rollback => $rollback)
  run_task('win_adobe_type_workaround::disable_webclient', rollback => $rollback)
  
}

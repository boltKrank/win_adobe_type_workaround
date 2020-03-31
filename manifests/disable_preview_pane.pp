class win_adobe_type_workaround::disable_preview_pane {
  
  #New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoReadingPane" -Value 1


}

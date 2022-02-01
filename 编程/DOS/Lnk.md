
```bat
Set file="lnk_file_name.lnk"
Set target_path="exe_full_path"
Set working_directory="exe_folder" 
Set description="exe_description"
Set icon_location="exe_icon"

Echo Set ws = WScript.CreateObject("WScript.Shell")  >>  lnk.vbs
Echo Set lnk = ws.CreateShortcut(%file%)             >>  lnk.vbs
Echo lnk.TargetPath = %target_path%                  >>  lnk.vbs
Echo lnk.WorkingDirectory = %working_directory%      >>  lnk.vbs
Echo lnk.Description = %description%                 >>  lnk.vbs
Echo lnk.IconLocation = %icon_location%              >>  lnk.vbs
Echo lnk.Save()                                      >>  lnk.vbs

cscript lnk.vbs

Del lnk.vbs
```

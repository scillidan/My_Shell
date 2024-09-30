@echo off

del "C:\Users\User\Github\My_Data\directory-opus\backup_*"
"C:\Program Files\GPSoftware\Directory Opus\dopusrt.exe" /cmd Prefs BACKUP=all TO "C:\Users\User\Github\My_Data\directory-opus\backup_{date|yyyy-MM-dd}_{time|HH-mm-ss}" QUIET
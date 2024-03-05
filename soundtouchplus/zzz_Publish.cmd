@echo off
@cls

rem Copy all files from source to destination.
xcopy "C:\Users\thluc\source\repos\HomeAssistant\blueprints\soundtouchplus" "\\homeassistantvm\config\blueprints\automation\soundtouchplus" /Y /E

rem Remove publishing script from destination.
del "\\homeassistantvm\config\blueprints\automation\soundtouchplus\zzz_Publish.cmd" /Q

pause
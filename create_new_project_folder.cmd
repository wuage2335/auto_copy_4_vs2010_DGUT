@echo off
color 0a
title create new project folder
for /f "tokens=2 delims==" %%i in (%cd%\working_path.ini) do set working_path=%%i
set /p folder_name=please enter folder name:
mkdir %working_path%\%folder_name%
echo folder_name=%folder_name%>%cd%\folder_name.ini
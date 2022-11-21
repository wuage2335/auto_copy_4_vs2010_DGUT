color 0a
title autocopy
set /a i=0
for /f "tokens=2 delims==" %%i in (%cd%\working_path.ini) do set working_path=%%i
for /f "tokens=2 delims==" %%i in (%cd%\folder_name.ini) do set folder_name=%%i
goto fileq

:fileq
set /a i=i+1
if exist %working_path%\%folder_name%\%folder_name%_%i%.c goto fileq

copy %working_path%\%folder_name%\%folder_name%\%folder_name%\%folder_name%.c %working_path%\%folder_name%\%folder_name%_%i%.c
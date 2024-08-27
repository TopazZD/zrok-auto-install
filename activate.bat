set /P token="Enter your zrok token and press enter: "
powershell -Command "%USERPROFILE%\bin\zrok.exe\zrok.exe enable %token%"
pause
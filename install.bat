powershell -Command "Invoke-WebRequest https://github.com/openziti/zrok/releases/download/v0.4.38/zrok_0.4.38_windows_amd64.tar.gz -OutFile zrok-packed.tar.gz";"New-Item -Path %TEMP%\zrok -ItemType Directory -ErrorAction SilentlyContinue";"tar -xf .\zrok-packed.tar.gz -C %TEMP%\zrok";"$source = Join-Path -Path %TEMP% -ChildPath 'zrok\zrok.exe'";"$destination = Join-Path -Path %USERPROFILE% -ChildPath 'bin\zrok.exe'";"New-Item -Path $destination -ItemType Directory -ErrorAction SilentlyContinue";"Copy-Item -Path $source -Destination $destination";"$env:path += ';'+$destination";"%USERPROFILE%\bin\zrok.exe\zrok.exe invite"
pause
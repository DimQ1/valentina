@echo off
chcp 65001 > nul
@echo off


setlocal
echo @echo off > "%~dp0/deactivate_conanrunenv.bat"
echo echo Restoring environment for conanrunenv.bat >> "%~dp0/deactivate_conanrunenv.bat"
for %%v in (PATH) do (
    set foundenvvar=
    for /f "delims== tokens=1,2" %%a in ('set') do (
        if /I "%%a" == "%%v" (
            echo set "%%a=%%b">> "%~dp0/deactivate_conanrunenv.bat"
            set foundenvvar=1
        )
    )
    if not defined foundenvvar (
        echo set %%v=>> "%~dp0/deactivate_conanrunenv.bat"
    )
)
endlocal




if defined PATH (
    set "PATH=C:\Users\dzmitry.shchamialiou\.conan2\p\b\xerce09351cdff188c\p\bin;%PATH%"
) else (
    set "PATH=C:\Users\dzmitry.shchamialiou\.conan2\p\b\xerce09351cdff188c\p\bin"
)
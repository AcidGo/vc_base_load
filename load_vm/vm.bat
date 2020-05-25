@echo off

:: params
set py_path=C:\Python34
set dir_path=%~dp0

:: echo %py_path%
:: echo %dir_path%
:: pause

:: wmi install
cd %dir_path%\wmi\WMI-1.4.9\
%py_path%\python.exe setup.py install

:: echo "wmi installed"
:: pause

:: pywin32 install

if exist "C:\Program Files (x86)" (
    goto x64
) else (
    goto x86
)


:: for /f "tokens=*" %%b in ('systeminfo^|find "x86"') do goto x86
:: for /f "tokens=*" %%b in ('systeminfo^|find "x64"') do goto x64

:x86
set pywin=pywin32-221.win32-py3.4.exe
goto pywininstall

:x64
set pywin=pywin32-221.win-amd64-py3.4.exe
goto pywininstall

:pywininstall
cd %dir_path%\wmi
%py_path%\Scripts\easy_install.exe %pywin%

:: echo "pywin installed"
:: pause
